import 'package:cours_allemand/ui/home/widget_rubrique.dart';
import 'package:flutter/material.dart';

class DesignTest extends StatefulWidget {
  DesignTest({Key? key}) : super(key: key);

  @override
  _DesignTestState createState() => _DesignTestState();
}

class _DesignTestState extends State<DesignTest> {
  @override
  Widget build(BuildContext context) {
    final text = "Dundin\nLandeskunde";
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Create object",
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
        ),
        body: WidgetRubrique(
          child: _textWidget(
            '$text',
            color: Theme.of(context).primaryColor,
            fontSize: text.length <= 2 ? 35 : 25,
            fontFamily: "Italianno",
          ),
        ));
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
      textAlign: TextAlign.center,
    );
  }
}
