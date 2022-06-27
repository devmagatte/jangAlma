import 'package:cours_allemand/ui/widget_util/title_clipper.dart';
import 'package:flutter/material.dart';

class DieZeit extends StatefulWidget {
  final String title;

  DieZeit({Key? key, required this.title}) : super(key: key);

  @override
  _DieZeitState createState() => _DieZeitState(this.title);
}

class _DieZeitState extends State<DieZeit> {
  final String title;

  final List<List<String>> listVocabulaire = [
    ['1:', 'eins'],
    ['2:', 'zwei'],
    ['3:', 'drei'],
    ['4:', 'vier'],
    ['5:', 'fünf'],
    ['6:', 'sechs'],
    ['7:', 'sieben'],
    ['8:', 'acht'],
    ['9:', 'neun'],
    ['10:', 'zehn'],
    ['11:', 'elf'],
    ['12:', 'zwölf'],
    ['13:', 'drei', 'zehn'],
    ['14:', 'vier', 'zehn'],
    ['15:', 'fünf', 'zehn'],
    ['16:', 'sech', 'zehn'],
    ['17:', 'sieb', 'zehn'],
    ['18:', 'acht', 'zehn'],
    ['19:', 'neun', 'zehn'],
    ['20:', 'zwan', 'zig'],
    ['30:', 'drei', 'ßig'],
    ['40:', 'vier', 'zig'],
    ['50:', 'fünf', 'zig'],
  ];

  final List<List<String>> listVocabulaireTwo = [
    ['50:', 'fünf', 'zig'],
    ['80:', 'acht', 'zig'],
    ['25:', 'fünf', 'undz', 'wan', 'zig'],
    ['60:', 'sech', 'zig'],
    ['90:', 'neun', 'zig'],
    ['43:', 'drei', 'und', 'vier', 'zig'],
    ['70:', 'sieb', 'zig'],
    ['100:', 'hundert'],
    ['127:', 'ein', 'hundert', 'sieben', 'und', 'zwanzig'],
  ];
  _DieZeitState(this.title);

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
      body: SingleChildScrollView(
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
                          'Guten Tag',
                        ),
                        _textDialogue(
                          'Modou',
                          'Hallo Jens, wie geht es dir?',
                        ),
                        _textDialogue(
                          'Jens',
                          'Es geht mir sehr gut,',
                        ),
                        _textDialogue(
                          'Modou',
                          'Hast du heute Nachmittag Zeit?',
                        ),
                        _textDialogue(
                          'Jens',
                          'heute? Heute nicht, vielleicht morgen Vormittag. Was ist los?',
                        ),
                        _textDialogue(
                          'Modou',
                          'Nichts besonders! Um 03 Uhr gehe ich spazieren, seit langem bin ich nicht am Meer. Ab 04 Uhr 15, das heißt viertel nach vier gehe auf den Supermarkt, und kaufe ich Lebensmittel ein… ',
                        ),
                        _textDialogue(
                          'Jens',
                          'ach so! wir können zusammen gehen das Fußballspiel sehe ich später. Und dann was machst du zu Hause?',
                        ),
                        _textDialogue(
                          'Modou',
                          'Wenn ich gegen 05:30 oder halb sechs nach Hause zurückkomme, helfe ich meiner Mutter in der Küche und nach dem Abendessen studiere ich von 08Uhr bis 09Uhr 30 Minuten.',
                        ),
                        _textDialogue(
                          'Jens',
                          'Ja, das ist doch cool!! Mein Tagesablauf sieht ganz anders aus.',
                        ),
                        _textDialogue(
                          'Modou',
                          'Okay, aber wie spät ist es? Können wir später losgehen!',
                        ),
                        _textDialogue(
                          'Jens',
                          'es ist 12 Uhr pünktlich, ja natürlich nach dem Mittagessen um 02:55 treffen wir uns vor der Haltstelle. Vergiss nicht um fünf Minuten vor drei.',
                        ),
                      ],
                    ),
                  ),
                ),
                _questions(),
                _listVocabulaire(),
                _listVocabulaireTwo(),
                Row(
                  children: [
                    Text('1000:'),
                    Text(' ein tausend'),
                  ],
                ),
                Row(
                  children: [
                    Text('10 000: '),
                    Text('zehn tausend'),
                  ],
                ),
                Row(
                  children: [
                    Text('1 000 000: '),
                    Text('eine Million'),
                  ],
                ),
                Row(
                  children: [
                    Text('11 000 000 000: '),
                    Text('eine Milliarde'),
                  ],
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  GridView _listVocabulaireTwo() {
    return GridView.count(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      crossAxisCount: 2,
      childAspectRatio: 6.0,
      physics: const ScrollPhysics(),
      children: listVocabulaireTwo.map((value) {
        if (value.length == 2) {
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
                  ],
                ),
              ),
            ],
          );
        }
        if (value.length == 3) {
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
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${value[0]} ',
              style: TextStyle(
                fontSize: 12,
                overflow: TextOverflow.fade,
              ),
            ),
            Expanded(
              child: RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 12),
                  children: [
                    TextSpan(
                      text: '${value[1]} ',
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: '${value[2]} ',
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: '${value[3]} ',
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: '${value[4]} ',
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: '${value[5]} ',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              flex: 1,
            ),
          ],
        );
        // }
      }).toList(),
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
                TextSpan(text: 'die Zahlen'),
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
            if (value.length == 2) {
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
                      ],
                    ),
                  ),
                ],
              );
            }
            if (value.length == 3) {
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
                      ],
                    ),
                  ),
                ],
              );
            }
            // if (value.length == 5) {
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
            // }
          }).toList(),
        ),
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

  TextSpan _textDialogue(String name, String text) {
    return TextSpan(
      children: [
        TextSpan(
            text: "$name : ", style: TextStyle(fontWeight: FontWeight.bold)),
        TextSpan(text: "$text\n\n"),
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
          """Wie spät ist es?
Es ist neun Uhr ein und zwanzig Minuten
Wann kommt der Bus?
Um welche Uhr findet die Sitzung statt?
Das ist spät, das ist früh,
Er ist pünktlich
Am morgen, am Nachmittag, am Abend, am Vormittag
""",
          // style: TextStyle(
          //   fontSize: 17,
          // ),
        ),
      ],
    );
  }
}
