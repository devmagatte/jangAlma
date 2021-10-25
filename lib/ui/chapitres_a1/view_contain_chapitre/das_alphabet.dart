import 'package:cours_allemand/data/alphabet.dart';
import 'package:flutter/material.dart';

class DasAlphabet extends StatefulWidget {
  final String? title;
  DasAlphabet({this.title, Key? key}) : super(key: key);

  @override
  _DasAlphabetState createState() => _DasAlphabetState(this.title);
}

class _DasAlphabetState extends State<DasAlphabet> {
  final String? title;

  _DasAlphabetState(this.title);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: GestureDetector(
            child: Icon(
              Icons.arrow_back,
              color: Colors.green,
            ),
            onTap: () => Navigator.of(context).pop(),
          ),
          title: _flexibleSpaceTitle(this.title),
        ),
        body: _bodyContainer(),
      ),
    );
  }

  Widget _bodyContainer() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: DataTable(
          columns: langAlphabet.map((e) => DataColumn(label: Text(e))).toList(),
          rows: letterAlphabet
              .map((e) => DataRow(cells: [
                    DataCell(Text("${e.number}")),
                    DataCell(Text("${e.buchstabe}")),
                    DataCell(Text("${e.aussprache}")),
                    DataCell(Text("${e.deutsch}")),
                    DataCell(Text("${e.wolof}")),
                  ]))
              .toList(),
        ),
      ),
    );
  }

  _flexibleSpaceTitle(String? text) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2.5, horizontal: 35.0),
      decoration: _boxeDecoration('image_logo.png'),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0),
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
