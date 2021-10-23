import 'package:cours_allemand/ui/chapitres_a1/list.dart';
import 'package:flutter/material.dart';

class ChapittreA1 extends StatefulWidget {
  final String? title;
  ChapittreA1({this.title, Key? key}) : super(key: key);

  @override
  _ChapittreA1State createState() => _ChapittreA1State(this.title);
}

class _ChapittreA1State extends State<ChapittreA1> {
  final String? title;

  _ChapittreA1State(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.green,
        ),
        title: _flexibleSpaceTitle(this.title),
        // Text(
        //   this.title!,
        //   style: TextStyle(
        //     color: Colors.green,
        //   ),
        // ),
        // backgroundColor: Colors.white,
      ),
      body: ListBuilder(),
    );
  }

  _flexibleSpaceTitle(String? text) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2.5, horizontal: 35.0),
      decoration: _boxeDecoration('image_logo.png'),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: _textWidget(
          '$text',
          color: Colors.white,
          fontSize: 25.0,
          fontFamily: "Ephesis",
        ),
      ),
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
      maxLines: 1,
      textAlign: TextAlign.center,
    );
  }
}
