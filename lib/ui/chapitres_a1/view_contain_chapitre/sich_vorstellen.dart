import 'package:cours_allemand/ui/widget_util/setPreferrence_orientation.dart';
import 'package:cours_allemand/ui/widget_util/title_clipper.dart';
import 'package:flutter/material.dart';

class SichVorstellen extends StatefulWidget {
  final String? title;

  SichVorstellen({this.title, Key? key}) : super(key: key);

  @override
  _SichVorstellenState createState() => _SichVorstellenState(this.title);
}

class _SichVorstellenState extends State<SichVorstellen> {
  final String? title;
  final List<String> _column = [
    '',
    'Sein',
    'Kommen',
    'wohnen',
  ];
  final List<List<String>> _row = [
    [
      'Ich',
      'bin',
      'komme',
      'wohne',
    ],
    [
      'Du (familiär)',
      'bist',
      'kommst',
      'wohnst',
    ],
    [
      'Sie (formell)',
      'sind',
      'kommen',
      'wohnen',
    ],
  ];

  _SichVorstellenState(this.title);

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
                    _textDialogue('Modou', 'Guten Morgen!'),
                    _textDialogue('Anne ', 'Guten Tag'),
                    _textDialogue('Modou', 'wie heißen Sie?'),
                    _textDialogue('Anne ', 'ich heiße Anne, und Sie?'),
                    _textDialogue(
                        'Modou', 'Ich heiße Modou. Woher kommen Sie?'),
                    _textDialogue('Anne ', 'Ich komme aus Deutschland'),
                    _textDialogue('Modou',
                        'Ich komme aus Senegal und wohne hier, was sind Sie von Beruf?'),
                    _textDialogue(
                        'Anne ', 'Ich bin Lehrerin von Beruf und Sie?'),
                    _textDialogue('Modou', 'Ha, super, ich bin Student.'),
                    _textDialogue('Anne ',
                        'Okay, tschüss! Nächstes Mal besuche ich Sie!'),
                    _textDialogue('Modou', 'Danke sehr und auf Wiedersehen'),
                  ],
                ),
              ),
            ),
            _titleSection('Redemitteln\n'),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 10.0),
              child: Text(
                  "Ich heiße…\n\nIch komme aus \n\nIch wohne in..\n\nIch bin … von Beruf\n\n"),
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
