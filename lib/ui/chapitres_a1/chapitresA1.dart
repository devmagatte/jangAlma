import 'package:flutter/material.dart';

class ChapittreA1 extends StatefulWidget {
  final String? title;
  ChapittreA1({this.title, Key? key}) : super(key: key);

  @override
  _ChapittreA1State createState() => _ChapittreA1State();
}

class _ChapittreA1State extends State<ChapittreA1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
