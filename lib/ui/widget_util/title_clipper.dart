import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class TitleClipper extends StatelessWidget {
  final String? text;

  const TitleClipper(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _containerClipPath(this.text);
  }

  _containerClipPath(String? text) {
    return ClipPath(
      clipper: HexagonalClipper(),
      child: Container(
        color: Colors.green,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 40.0),
          child: _textWidget(
            '$text',
            color: Colors.white,
            fontSize: 25.0,
            fontFamily: "Ephesis",
          ),
        ),
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
