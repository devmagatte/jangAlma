import 'package:cours_allemand/ui/chapitres_a1/list.dart';
import 'package:cours_allemand/ui/widget_util/setPreferrence_orientation.dart';
import 'package:cours_allemand/ui/widget_util/title_clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    OrientationDevice.portrait();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back,
            color: Colors.green,
          ),
          onTap: () => Navigator.of(context).pop(),
        ),
        title: TitleClipper(this.title),
      ),
      body: ListBuilder(),
    );
  }
}
