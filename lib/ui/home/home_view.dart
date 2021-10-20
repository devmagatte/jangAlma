import 'package:cours_allemand/data/rubriques_list.dart';
import 'package:cours_allemand/route/routeName.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  final String title;
  HomeView({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final String imageBackground = "background_sliverBar.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _sliverAppBar(),
          _rubriqueList(),
        ],
      ),
    );
  }

  _sliverAppBar() {
    return SliverAppBar(
      floating: false,
      pinned: true,
      title: Icon(
        Icons.menu,
        color: Theme.of(context).primaryColor,
      ),
      expandedHeight: 200.0,
      flexibleSpace: _flexibleSpace(),
    );
  }

  _flexibleSpace() {
    return FlexibleSpaceBar(
      centerTitle: true,
      title: _flexibleSpaceTitle(),
      background: _flexibleSpaceBackground(),
    );
  }

  _flexibleSpaceTitle() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15.0),
      decoration: _boxeDecoration('image_logo.png'),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: _textWidget(
          'JangAlma',
          color: Colors.white,
          fontSize: 18.0,
          fontFamily: "Ephesis",
        ),
      ),
    );
  }

  _flexibleSpaceBackground() {
    return Container(
      decoration: _boxeDecoration(
        '$imageBackground',
        // colorFilter: new ColorFilter.mode(
        //   Colors.red.withOpacity(0.7),
        //   BlendMode.dstATop,
        // ),
        fit: BoxFit.fill,
      ),
    );
  }

  _rubriqueList() {
    return SliverFillRemaining(
      child: Container(
        color: Colors.white,
        child: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(8.0),
          mainAxisSpacing: 5.0,
          crossAxisSpacing: 5.0,
          children:
              rubriquesList.map((text) => _containerWidget(text)).toList(),
        ),
      ),
    );
  }

  Widget _containerWidget(String text) {
    return GestureDetector(
      child: Container(
        decoration: _boxeDecoration('rubrique_image.png'),
        child: Center(
          child: _textWidget(
            '$text',
            color: Theme.of(context).primaryColor,
            fontSize: text.length <= 2 ? 35 : 25,
            fontFamily: "Italianno",
          ),
        ),
      ),
      onTap: () => _onTapRubrique(text),
    );
  }

  _onTapRubrique(String rubrique) {
    Navigator.pushNamed(
      context,
      "$ListChapitresa1",
      arguments: '$rubrique',
    );
  }

  BoxDecoration _boxeDecoration(
    String imageName, {
    ColorFilter? colorFilter,
    BoxFit? fit,
  }) {
    return BoxDecoration(
      image: DecorationImage(
        colorFilter: colorFilter,
        image: AssetImage('assert/images/$imageName'),
        fit: fit,
      ),
    );
  }

  Text _textWidget(
    String text, {
    Color? color,
    double? fontSize,
    String? fontFamily,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: fontFamily,
      ),
    );
  }
}
