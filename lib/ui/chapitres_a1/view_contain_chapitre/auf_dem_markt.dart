import 'package:cours_allemand/ui/widget_util/title_clipper.dart';
import 'package:flutter/material.dart';

class AufDemMarkt extends StatefulWidget {
  final String? title;

  AufDemMarkt({Key? key, this.title}) : super(key: key);

  @override
  _AufDemMarktState createState() => _AufDemMarktState(this.title);
}

class _AufDemMarktState extends State<AufDemMarkt> {
  final String? title;
  final List<String> _column = ['Das\nMöbel', 'das\nLebensmittel', 'der Ort'];
  final List<List<String>> _row = [
    ['der Tisch', 'das Brot', 'der Markt'],
    ['der Stuhl', 'der Nudeln', 'der Supermarkt'],
    ['der Schrank', 'die  Kartoffel', 'der Flohmarkt'],
    ['der die Lampe', 'der Computer', 'der\nEinkaufzentrum'],
    ['das Bett', 'der Schlüssel', 'der Laden'],
    ['die Lampe', 'das Notizbuch', 'der Werkstatt'],
  ];

  final List<List<String>> listVocabulaire = [
    ['1', 'ers', 'tens'],
    ['2', 'zwei', 'tens'],
    ['3', 'drit', 'tens'],
    ['4', 'vier', 'tens'],
    ['5', 'fünf', 'tens'],
    ['6', 'sechs', 'tens'],
    ['7', 'sieb', 'tens'],
    ['8', 'ach', 'tens'],
    ['9', 'neun', 'tens'],
    ['10', 'zehn', 'ten'],
    ['12', 'zwölf', 'tens'],
    ['13', 'drei', 'zehn', 'tens'],
    ['14', 'vier', 'zehn', 'tens'],
    ['15', 'fünf', 'zehn', 'tens'],
    ['20', 'zwan', 'zigs', 'tens'],
    ['21', 'einund', 'zwan', 'zigs', 'tens'],
    ['30', 'drei', 'ßigs', 'tens'],
    ['35', 'fünfund', 'drei', 'ßigs', 'tens'],
    ['40', 'vier', 'zigs', 'tens'],
    ['59', 'neunund', 'fünf', 'zigs', 'tens']
  ];

  _AufDemMarktState(this.title);

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
        padding: EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 10,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _titleSection('Text\n'),
              Container(
                width: MediaQuery.of(context).size.width,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black),
                    children: [
                      _textDialogue(
                        'Jens',
                        'Endlich auf dem Mark!',
                      ),
                      _textDialogue(
                        'Modou',
                        'das freut mich, aber sag mal, was brauchst du eigentlich?',
                      ),
                      _textDialogue(
                        'Jens',
                        'also erstens will  ich hier Lebensmittel kaufen und zweitens im Supermarkt eine Lampe und Arbeitstisch kaufen. Hoffentlich wird das nicht zu teuer. Und drittens fahren wir zurück.',
                      ),
                      _textDialogue(
                        'Modou',
                        'nein, das glaube ich nicht. Im Supermarkt sind die Preise manchmal sehr günstig.',
                      ),
                      _textDialogue(
                        'Jens',
                        'Ok mal sehen….',
                      ),
                    ],
                  ),
                ),
              ),
              _titleSection('Auf dem Markt\n'),
              Container(
                width: MediaQuery.of(context).size.width,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black),
                    children: [
                      _textDialogue(
                        'Jens',
                        'Guten Tag, ich brauche ein Kilo Kartoffel, Salat, Zwiebeln und auch Brot.',
                      ),
                      _textDialogue(
                        'Verkäuferin',
                        'hier bitte, das macht fünfundzwanzig Euros!',
                      ),
                      _textDialogue(
                        'Jens',
                        'Danke!',
                      ),
                      _textDialogue(
                        'Modou',
                        'hast du die Tomaten vergessen? Wo ist deine Einkaufsliste?...',
                      ),
                    ],
                  ),
                ),
              ),
              _titleSection('Im Supermarkt\n'),
              Container(
                width: MediaQuery.of(context).size.width,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black),
                    children: [
                      _textDialogue(
                        'Jens',
                        'entschuldigen Sie bitte! Wie viel kostet diese Lampe?',
                      ),
                      _textDialogue(
                        'Verkäuferin',
                        'das kostet nur 50 Euros.',
                      ),
                      _textDialogue(
                        'Jens',
                        'Modou siehst du das habe ich schon gesagt und die Preise sind fest man kann nicht handeln.',
                      ),
                      _textDialogue(
                        'Modou',
                        'wir können in einen anderen Laden gehen und die Preise vergleichen!',
                      ),
                      _textDialogue(
                        'Verkäufer',
                        'Moment mal! Wenn Sie andere Waren kaufen möchten, haben Sie allerdings einen Rabatt, also ich mache eine Rechnung mit dem Rabatt. Wie viele Möbel brauchen Sie?',
                      ),
                      _textDialogue(
                        'Jens',
                        'okay, das ist gut. Lass mich mal sehen…',
                      ),
                    ],
                  ),
                ),
              ),
              _questions(),
              _titleSection('Vokabel : \n'),
              _tables(),
              _listVocabulaire(),
              _titleSection('Tipps\n'),
              Text('1 - sehen Sie die Videos über Einkaufen in Internet'),
              Text('2 - laden Sie Apps und studieren Sie das Teil Einkaufen'),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Column _listVocabulaire() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: 'Vokabel: ',
                  style: TextStyle(
                      fontSize: 17,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(text: 'Die Ordinalzahlen'),
              ],
            ),
          ),
        ),
        GridView.count(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          crossAxisCount: 3,
          childAspectRatio: 4.0,
          physics: const ScrollPhysics(),
          children: listVocabulaire.map((value) {
            if (value.length == 3) {
              return Row(
                children: [
                  Text(
                    '${value[0]} ',
                    style: TextStyle(fontSize: 10),
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 12),
                      children: [
                        TextSpan(
                          text: value[1],
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: value[2],
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }
            if (value.length == 4) {
              return Row(
                children: [
                  Text(
                    '${value[0]} ',
                    style: TextStyle(fontSize: 12),
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 10),
                      children: [
                        TextSpan(
                          text: value[1],
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: value[2],
                          style: TextStyle(color: Colors.green),
                        ),
                        TextSpan(
                          text: value[3],
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }
            if (value.length == 5) {
              return Row(
                children: [
                  Text(
                    '${value[0]} ',
                    style: TextStyle(fontSize: 10),
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 12),
                      children: [
                        TextSpan(
                          text: value[1],
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: value[2],
                          style: TextStyle(color: Colors.brown),
                        ),
                        TextSpan(
                          text: value[3],
                          style: TextStyle(color: Colors.red),
                        ),
                        TextSpan(
                          text: value[4],
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }
            return Text('text');
          }).toList(),
        ),
      ],
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
          """Was kostet das Wie viel kostet das? 
Am  Wochenende können wir einkaufen gehen?
Im Supermarkt sind die Lebensmittel billiger
Gibt es ein Einkaufszentrum in der Nähe?
Kann ich dir/ Ihnen helfen? 
Wo kann ich bitte die Kasse finden?
Das ist zu teuer/ sehr günstig/billig!
Sie braucht einen Tisch
Wo befindet sich das Regal für Getränke?
Bekomme ich als Student einen Rabatt?
Wie kann ich bezahlen? Bar oder mit Kreditkarte?
Hier kann man nicht handeln.
""",
          // style: TextStyle(
          //   fontSize: 17,
          // ),
        ),
      ],
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

  TextSpan _textDialogue(String name, String text) {
    return TextSpan(
      children: [
        TextSpan(
            text: "$name : ", style: TextStyle(fontWeight: FontWeight.bold)),
        TextSpan(text: "$text\n\n"),
      ],
    );
  }
}
