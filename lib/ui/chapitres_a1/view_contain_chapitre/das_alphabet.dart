import 'package:cours_allemand/data/alphabet.dart';
import 'package:cours_allemand/ui/widget_util/setPreferrence_orientation.dart';
import 'package:cours_allemand/ui/widget_util/title_clipper.dart';
import 'package:flutter/material.dart';

class DasAlphabet extends StatefulWidget {
  final String? title;

  DasAlphabet({this.title, Key? key}) : super(key: key);

  @override
  _DasAlphabetState createState() => _DasAlphabetState(this.title);
}

class _DasAlphabetState extends State<DasAlphabet> {
  final String? title;
  @override
  void dispose() {
    super.dispose();
    OrientationDevice.portrait();
  }

  _DasAlphabetState(this.title);

  @override
  Widget build(BuildContext context) {
    OrientationDevice.landscape();
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
          title: TitleClipper(this.title),
        ),
        body: _bodyContainer(),
      ),
    );
  }

  Widget _bodyContainer() {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        // padding: EdgeInsets.symmetric(vertical: 10.0),
        child: DataTable(
          dataRowColor: MaterialStateProperty.all<Color>(Colors.green.shade50),
          headingRowColor: MaterialStateProperty.all<Color>(Colors.green),
          columns: langAlphabet
              .map((e) => DataColumn(
                    label: Text(
                      e,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ))
              .toList(),
          rows: letterAlphabet
              .map((e) => DataRow(cells: [
                    _dataCell("${e.number}"),
                    _dataCell("${e.buchstabe}"),
                    _dataCell("${e.aussprache}"),
                    _dataCell("${e.deutsch}"),
                    _dataCell("${e.wolof}"),
                  ]))
              .toList(),
        ),
      ),
    );
  }

  DataCell _dataCell(String text) {
    return DataCell(Text(
      "$text",
      style: TextStyle(color: Colors.green[900]),
    ));
  }
}
