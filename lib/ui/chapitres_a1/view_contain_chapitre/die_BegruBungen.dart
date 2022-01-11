import 'package:cours_allemand/ui/widget_util/setPreferrence_orientation.dart';
import 'package:cours_allemand/ui/widget_util/title_clipper.dart';
import 'package:flutter/material.dart';

class DieBegruBungen extends StatefulWidget {
  final String? title;

  DieBegruBungen({this.title, Key? key}) : super(key: key);

  @override
  _DieBegruBungenState createState() => _DieBegruBungenState(this.title);
}

class _DieBegruBungenState extends State<DieBegruBungen> {
  final String? title;

  _DieBegruBungenState(this.title);

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
            _titleSection('Sich begrüßen (se saluer)\n'),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(8.0),
              child: Text(
                'En allemand on distingue deux types de salutations : formelle qui concerne l’administration et les personnes inconnues et informelle qui se fait entre famille ou ami (e) s.\n\n',
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Formell\n',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 10.0),
              child: Text(
                  'Guten Tag\n\nuten Morgen (08:00)\n\nGuten Abend (13:00)\n\n'),
            ),
            Text(
              'Informell\n',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 16,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 10.0),
              child: Text(
                  'Hallo\n\nHi\n\nGrüß dich!\n\nServus\n\nMoïn-moïn\n\nHuhu\n\n'),
            ),
            _titleSection('Abschied nehmen (prendre congé)\n'),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Pour prendre congé on peut utiliser les expressions suivantes, mais au téléphone c’est « auf Wiederhören ».\n\n',
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 10.0),
              child: Text(
                  'Auf wiedersehen\n\nAuf Wiederhören\n\nGute Nacht\n\nTschüss\n\nBis bald\n\nBis später\n\n'),
            ),
            _titleSection('Danken\n'),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(8.0),
              child: Text(
                'Pour remercier: \n\n',
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 10.0),
              child: Text(
                  'Danke\n\nDanke sehr\n\nGute Nacht\n\nVielen Dank\n\nDanke schön\n\nDas ist nett\n\n'),
            ),
            _titleSection('Entschuldigung\n'),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(8.0),
              child: Text(
                'Les allemands aiment bien les formules de politesse et pour s’excuser on peut utiliser : \n\n',
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              width: MediaQuery.of(context).size.width,
              child: Text('Entschuldigung !\n\nEntschuldigen Sie bitte !\n\n'),
            ),
          ],
        ),
      ),
    );
  }

  Container _titleSection(String text) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(bottom: 10.0),
      color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Text(
          '$text',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
