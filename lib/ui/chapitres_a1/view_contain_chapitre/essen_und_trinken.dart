import 'package:cours_allemand/ui/widget_util/media_query.dart';
import 'package:flutter/material.dart';

import '../../widget_util/title_clipper.dart';

class DasEssenUndTrinken extends StatefulWidget {
  final String title;

  DasEssenUndTrinken({Key? key, required this.title}) : super(key: key);

  @override
  _DasEssenUndTrinkenState createState() =>
      _DasEssenUndTrinkenState(this.title);
}

class _DasEssenUndTrinkenState extends State<DasEssenUndTrinken> {
  final String title;
  final List<String> _column_one = [
    'Das Gericht\n/die Speise',
    'Getränke',
    'die Obste\n/die Gemüse'
  ];
  final List<List<String>> _row_one = [
    ['Kartoffelsalat', 'der Saft ', 'die Firma'],
    ['Bratwurst', 'das Wasser', 'das Büro'],
    ['Suppe', 'der Wein', 'die Fabrik'],
    ['der Krankenpfleger/in', 'das Bier', 'der Kiosk'],
    ['der Klempner/in', 'das Kaffee', 'der Laden'],
  ];

  final List<String> _column_two = [
    'Beruf',
    'Material',
    'Ort',
  ];
  final List<List<String>> _row_two = [
    ['Der Koch', 'das Besteck', 'das Restaurant'],
    ['die Kellnerin', 'das Messer', 'der Cafe'],
    ['der Gastronom', 'die Tasse', 'die Kneipe'],
    ['der Partyservice', 'der Löffel', 'die Terrasse'],
  ];

  _DasEssenUndTrinkenState(this.title);

  @override
  Widget build(BuildContext context) {
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
      body: _containerBody(),
    );
  }

  Widget _containerBody() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuerySize(context).sizeFromHeight(10.0),
          horizontal: MediaQuerySize(context).sizeFromHeight(10.0),
        ),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _titleSection('Text\n'),
            RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
                  _textDialogue(
                    'Modou',
                    'Nach dieser Runde glaube ich, dass wir eine Pause benötigen!',
                  ),
                  _textDialogue(
                    'Jens',
                    'stimmt ich bin hungrig und durstig, da ist es ein Restaurant.',
                  ),
                ],
              ),
            ),
            _titleSection('Im Restaurant\n'),
            RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
                  _textDialogue(
                    'Kellner',
                    'Guten Tag, was möchten Sie bitte?',
                  ),
                  _textDialogue(
                    'Modou',
                    'Tag, kann ich Reis mit Erdnusssoße haben? Auch eine Flasche Mineralwasser mit Kohlensäure und ein Apfelschorle. Danke',
                  ),
                  _textDialogue(
                    'Kellner',
                    'Entschuldigung! Wir haben keine afrikanischen Speisen. Können Sie die Speisekarte noch lesen? Und Sie was möchten Sie?',
                  ),
                  _textDialogue(
                    'Jens',
                    'ich nehme Kartoffelpüree Gemüse Kräutersoße Buletten und eine Tasse Kaffee ohne Sahne und eine Flasche Orangensaft bitte. Guten Appetit!',
                  ),
                  _textDialogue(
                    'Modou',
                    'Kein Problem, was ist das Tagegericht? Den nehme ich! Guten Appetit auch!',
                  ),
                  _textDialogue(
                    'Jens',
                    'wie schmeckt es?',
                  ),
                  _textDialogue(
                    'Modou',
                    'Super! Das ist sehr lecker aber scharf! Ich werde noch Eis essen.',
                  ),
                  _textDialogue(
                    'Jens',
                    'wunderbar jetzt bin ich wieder wach! Die Rechnung bitte!',
                  ),
                  _textDialogue(
                    'Kellner',
                    'getrennt oder zusammen?',
                  ),
                  _textDialogue(
                    '(Daneben',
                    'heute nehme ich einen Salat und ein Schnitzel mit Pommes. Ich trinke Fanta. Als Nachtisch esse ich ein Eis.)',
                  ),
                ],
              ),
            ),
            _questions(),
            _tablesOne(),
            _tablesTwo(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'Grammatik: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: 'Negativartikel: kein '),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                              text: 'Regel: ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: 'nicht + ein'),
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_right_alt),
                      Text('kein'),
                    ],
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'Beispiel:  ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: 'Ich habe keinen Appetit'),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                              text: '                   ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                                  'Ihr habt keine Lust ins Restaurant zu gehen',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                              text: '                   ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: 'Er isst kein Fleisch, er ist Vegetarier',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Column _questions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            "Redemitteln: ",
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          """Ich habe Hunger, ich habe Durst
Was möchten sie bitte?
Haben Sie eine Speisekarte?
Könnten Sie mir bitte das Salz reichen?
Eine Prise Salz in die Suppe kann nicht Schaden
Das ist sehr scharf
Ich esse vegetarisch/vegan
Ich bin Vegetarier 
Das ist sehr lecker
""",
        ),
      ],
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

  Container _titleSection(String text) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Text(
        '$text',
        textAlign: TextAlign.start,
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }

  Container _tablesOne() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: DataTable(
        dataRowColor: MaterialStateProperty.all<Color>(Colors.green.shade50),
        headingRowColor:
            MaterialStateProperty.all<Color>(Colors.green.shade200),
        columns: _column_one
            .map((e) => DataColumn(
                  label: Expanded(
                    child: Text(
                      e,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ))
            .toList(),
        rows: _row_one
            .map((element) => DataRow(cells: [
                  _dataCell("${element[0]}"),
                  _dataCell("${element[1]}"),
                  _dataCell("${element[2]}"),
                  // _dataCell("${element[3]}"),
                ]))
            .toList(),
      ),
    );
  }

  Container _tablesTwo() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: DataTable(
        dataRowColor: MaterialStateProperty.all<Color>(Colors.green.shade50),
        headingRowColor:
            MaterialStateProperty.all<Color>(Colors.green.shade200),
        columns: _column_two
            .map((e) => DataColumn(
                  label: Expanded(
                    child: Text(
                      e,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ))
            .toList(),
        rows: _row_two
            .map((element) => DataRow(cells: [
                  _dataCell("${element[0]}"),
                  _dataCell("${element[1]}"),
                  _dataCell("${element[2]}"),
                  // _dataCell("${element[3]}"),
                ]))
            .toList(),
      ),
    );
  }

  DataCell _dataCell(String text) {
    return DataCell(
      Text(
        "$text",
        style: TextStyle(color: Colors.green[900]),
      ),
    );
  }
}
