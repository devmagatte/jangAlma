import 'package:cours_allemand/data/rubriques_list.dart';
import 'package:cours_allemand/ui/widget_util/setPreferrence_orientation.dart';
import 'package:flutter/material.dart';

import '../widget_util/media_query.dart';

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
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _header(context),
            _body(),
          ],
        ),
      ),
    );
  }

  Expanded _body() {
    return Expanded(
      child: Container(
        child: GridView.count(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          crossAxisCount: 2,
          crossAxisSpacing: 30,
          mainAxisSpacing: 30.0,
          physics: const ScrollPhysics(),
          children: rubriquesList
              .map((rubrique) => _containerWidget(rubrique))
              .toList(),
        ),
      ),
      flex: 3,
    );
  }

  Expanded _header(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.green,
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                Colors.green.shade600,
                BlendMode.modulate,
              ),
              image: AssetImage(
                'assert/images/dashboard.jpg',
              ),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadiusDirectional.only(
              bottomEnd: Radius.circular(30),
              bottomStart: Radius.circular(30),
            ),
          ),
          child: Container(
            margin: EdgeInsets.symmetric(
              vertical: MediaQuerySize(context).sizeFromHeight(50),
              horizontal: MediaQuerySize(context).sizeFromHeight(20),
            ),
            width: MediaQuerySize(context).width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _iconMenu(),
                _texteWelcome(),
              ],
            ),
          ),
        ),
      ),
      flex: 1,
    );
  }

  Column _texteWelcome() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Bonjour,',
          style: TextStyle(
            fontSize: MediaQuerySize(context).sizeFromHeight(20),
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Apprend l'allemand facilement !",
          style: TextStyle(
            color: Colors.white,
            fontSize: MediaQuerySize(context).sizeFromHeight(17),
          ),
        ),
      ],
    );
  }

  Padding _iconMenu() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Icon(
        Icons.menu,
        color: Colors.white,
      ),
    );
  }

  Widget _containerWidget(Rubrique rubrique) {
    return GestureDetector(
      child: Container(
        decoration: _boxeDecoration('rubrique_image.png'),
        child: Center(
          child: _textWidget(
            '${rubrique.name}',
            color: Theme.of(context).primaryColor,
            fontSize: rubrique.name.length <= 2
                ? MediaQuerySize(context).sizeFromHeight(35)
                : MediaQuerySize(context).sizeFromHeight(25),
            fontFamily: "Italianno",
          ),
        ),
      ),
      onTap: () => _onTapRubrique(rubrique),
    );
  }

  _onTapRubrique(Rubrique rubrique) {
    Navigator.pushNamed(
      context,
      rubrique.route,
      arguments: rubrique.name.replaceAll('\n', ' / '),
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
      textAlign: TextAlign.center,
    );
  }
}
