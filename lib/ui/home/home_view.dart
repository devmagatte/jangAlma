import 'package:cours_allemand/data/rubriques_list.dart';
import 'package:cours_allemand/route/routeName.dart';
import 'package:cours_allemand/ui/widget_util/setPreferrence_orientation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

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
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    OrientationDevice.portrait();
    return Scaffold(
      // appBar: _appBar(),
      body: _containerBody(),
    );
  }

  _bodyContainer() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 10.0),
        // color: Colors.grey.shade200,
        child: Column(
          children: [
            Container(
              // color: Colors.green,
              height: 250,
              decoration: _boxeDecoration(
                'image_logo2.png',
                // color: Colors.green,
                fit: BoxFit.fitHeight,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40.0, left: 10.0),
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  // SizedBox(height: 10.0),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                        child: _textWidget(
                          'JangAlma',
                          color: Colors.white,
                          fontSize: 60.0,
                          fontFamily: "Ephesis",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              padding: const EdgeInsets.all(8.0),
              mainAxisSpacing: 5.0,
              crossAxisSpacing: 5.0,
              children:
                  rubriquesList.map((text) => _containerWidget(text)).toList(),
            ),
          ],
        ),
      ),
    );
  }

  _appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.green,
      centerTitle: true,
      leading: Icon(Icons.menu, color: Colors.white),
      title: _textWidget(
        'JangAlma',
        color: Colors.white,
        fontSize: 30.0,
        fontFamily: "Ephesis",
      ),
    );
  }

  _containerBody() {
    return CustomScrollView(
      slivers: [
        _sliverAppBar(),
        _rubriqueList(),
      ],
    );
  }

  _sliverAppBar() {
    return SliverAppBar(
      elevation: 0,
      floating: false,
      pinned: true,
      backgroundColor: Colors.green,
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
      decoration: _boxeDecoration('image_logo2.png'),
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
    Color? color,
  }) {
    return BoxDecoration(
      color: color,
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
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
