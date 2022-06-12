import 'package:flutter/material.dart';

import '../../widget_util/title_clipper.dart';

class DieArbeit extends StatefulWidget {
  final String? title;

  DieArbeit({Key? key, required this.title}) : super(key: key);

  @override
  _DieArbeitState createState() => _DieArbeitState(this.title);
}

class _DieArbeitState extends State<DieArbeit> {
  final String? title;
  final List<String> _column = ['der Beruf', 'das\nMaterial', 'der Ort'];
  final List<List<String>> _row = [
    ['der Ingenieur/in', 'das Formular', 'die Firma'],
    ['der Arzt/Ärztin', 'der Drucker', 'das Büro'],
    ['der Journalist/in', 'die  Rechnung', 'die Fabrik'],
    ['der Krankenpfleger/in', 'der Computer', 'der Kiosk'],
    ['der Klempner/in', 'der Schlüssel', 'der Laden'],
    ['der Maurer/in', 'das\nNotizbuch', 'der\nWerkstatt'],
    ['der Mechaniker/in', 'das Kalender', 'das\nUnternehmen'],
    ['der Imker/in', 'die Maus', 'das Gebäude'],
    ['der Lehrer/in', 'der Stift', 'die Schule']
  ];
  _DieArbeitState(this.title);

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
      body: _bodyContainer(),
    );
  }

  _bodyContainer() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 10.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _texte(),
            _questions(),
            _tables(),
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
                        TextSpan(text: 'Femininum'),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'Regel: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: 'Maskulinum + in'),
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
                              text: 'Beispiel:  ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: 'Der Ingenieur'),
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_right_alt),
                      Text('die Ingenieurin'),
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
                            TextSpan(text: 'Der Journalist '),
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_right_alt),
                      Text('die Journalistin'),
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

  Container _tables() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: DataTable(
        dataRowColor: MaterialStateProperty.all<Color>(Colors.green.shade50),
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
                  // _dataCell("${element[3]}"),
                ]))
            .toList(),
      ),
    );
  }

  DataCell _dataCell(String text) {
    return DataCell(Text(
      "$text",
      style: TextStyle(color: Colors.green[900]),
    ));
  }

  Column _questions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
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
          """Was sind Sie von Beruf? Was machen Sie? 
Für welches Unternehmen arbeiten Sie?
Ich habe Jura studiert, aber ich arbeite in der Werbung?
Sie ist Lehrerin. 
Ich arbeite als Fahrer
Ich arbeite Vollzeit/Halbzeit.
Er ist arbeitslos, er sucht Arbeit.
Während der Pandemie arbeiten wir zu Hause.
Sie fährt nach Berlin für die Firma. 
Sie ist beruflich viel unterwegs.
""",
          style: TextStyle(
            fontSize: 17,
          ),
        ),
      ],
    );
  }

  Column _texte() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            "Text: ",
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          """Guten Morgen, ich heiße Detlev und bin 45. Ich bin Geschäftsmann von Beruf. Ich mag meine Arbeit sehr, mein Büro liegt nicht weit von meinem Haus. Mit anderen Personen diskutieren und handeln, macht mir Spaß. Der Kontakt ist sehr wichtig und nach der Arbeit kann man sich ein bisschen über andere Themen austauschen. Da kann man Erfahrung sammeln. Das Geld ist sehr wichtig aber die soziale Nähe und das Gefühl ein Problem für einen anderen gelöst zu haben, ist wichtiger. So habe ich interessante Beziehungen mit den Kunden. Ich bemühe mich viel, um sie zu zufriedenstellen und auf ihre Meinungen zu achten.

Die Firma habe ich mit einem Freund gegründet. Er ist ein guter Arbeitskollege und wir verstehen uns. Wir haben einige Angestellte, die sehr begabt und kompromissbereit sind. Wir arbeiten regelmäßig  in der Woche circa 40 Stunden. Wenn wir manchmal mehr Arbeit haben, stellen wir Personen an, die täglich oder wöchentlich arbeiten. Für die Arbeitslosen ist das ein Vorteil.

Und du? was ist deine Arbeit?
""",
          style: TextStyle(
            fontSize: 17,
          ),
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}
