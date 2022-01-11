import 'package:cours_allemand/ui/widget_util/setPreferrence_orientation.dart';
import 'package:cours_allemand/ui/widget_util/title_clipper.dart';
import 'package:flutter/material.dart';

class DieFamilie extends StatefulWidget {
  final String? title;

  DieFamilie({this.title, Key? key}) : super(key: key);

  @override
  _DieFamilieState createState() => _DieFamilieState(this.title);
}

class _DieFamilieState extends State<DieFamilie> {
  final String? title;
  final List<String> _column = ['', 'Arbeiten', 'Sprechen', 'gehen'];
  final List<List<String>> _row = [
    ["Ich", "arbeite", "spreche", "gehe"],
    [" Du (familiär)", "arbeitest", "sprichst", "gehst"],
    ["Er, sie, es", "arbeitet", "spricht", "geht"],
    ["Sie (formell)", "arbeiten", "sprechen", "gehen"],
  ];

  _DieFamilieState(this.title);

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
        child: Column(
          children: [
            _titleSection('Text\n'),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 10.0),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.black),
                  children: [
                    _textDialogue('Anne ', 'Guten Tag'),
                    _textDialogue('Modou',
                        'Guten Morgen, Kommt bitte herein! Frau Müller'),
                    _textDialogue('Anne ', 'Danke Modou, das ist nett!'),
                    _textDialogue('Modou',
                        'Das ist Mein Vater, er heißt Abdou und hier ist meine Mutter sie heißt Fatou. Und das ist Frau Müller, sie ist Lehrerin.'),
                    _textDialogue('Abdou ',
                        'Schön Sie kennen zu lernen, ich auch Lehrer von Beruf. Ich spreche ein Bisschen Deutsch.'),
                    _textDialogue('Fatou ',
                        'danke für den Besuch, Modou hat viel von Ihnen erzählt.'),
                    _textDialogue('Anne ',
                        'Stimmt, er ist mit meinem Sohn befreundet. Er ist neunzehn Jahre alt. Wie alt bist du?'),
                    _textDialogue('Modou',
                        'Ich bin auch neunzehn, wir sind gleichaltrig. Mein Bruder und meine Schwester sind noch in der Schule.'),
                    _textDialogue('Fatou ',
                        'Frau Müller arbeiten meine Kinder fleißig in der Schule?'),
                    _textDialogue(
                        'Anne ', 'Ja, sie sind sehr fleißig und aufmerksam'),
                    _textDialogue('Abdou ',
                        'Natürlich! Ihr Onkel und Ihre Tante arbeiten neben der Schule und kontrollieren sie'),
                    _textDialogue('Anne ',
                        'Natürlich! Ihr Onkel und Ihre Tante arbeiten neben der Schule und kontrollieren sie!'),
                    _textDialogue('Modou', 'Vielen Dank und auf Wiedersehen!'),
                    _textDialogue('Anne', 'Anne'),
                  ],
                ),
              ),
            ),
            _titleSection('Redemitteln\n'),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 10.0),
              child: Text(
                  "Kommen Sie herein!\n\nDas ist mein/meine\n\nIch bin… Jahre alt/ich bin…\n\nIch arbeite als …\n\n"),
            ),
            _titleSection('Konjugation\n', padding: EdgeInsets.all(0)),
            Container(
              width: MediaQuery.of(context).size.width,
              child: DataTable(
                dataRowColor:
                    MaterialStateProperty.all<Color>(Colors.green.shade50),
                headingRowColor:
                    MaterialStateProperty.all<Color>(Colors.green.shade200),
                columns: _column
                    .map((e) => DataColumn(
                          label: Text(
                            e,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ))
                    .toList(),
                rows: _row
                    .map((element) => DataRow(cells: [
                          _dataCell("${element[0]}"),
                          _dataCell("${element[1]}"),
                          _dataCell("${element[2]}"),
                          _dataCell("${element[3]}"),
                        ]))
                    .toList(),
              ),
            ),
            SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }

  TextSpan _textDialogue(String name, String text) {
    return TextSpan(
      children: [
        TextSpan(
            text: "$name : ", style: TextStyle(fontWeight: FontWeight.bold)),
        TextSpan(text: "$text\n\n"),
      ],
    );
  }

  Container _titleSection(String text, {EdgeInsets? padding}) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: padding ?? EdgeInsets.only(bottom: 10.0),
      color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20.0),
        child: Text(
          '$text',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
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
