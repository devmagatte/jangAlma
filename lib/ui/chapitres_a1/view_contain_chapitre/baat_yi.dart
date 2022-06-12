import 'package:flutter/material.dart';

import '../../../data/baat_yi.dart';
import '../../widget_util/title_clipper.dart';

class BaatYi extends StatefulWidget {
  final String title;

  BaatYi({Key? key, required this.title}) : super(key: key);

  @override
  _BaatYiState createState() => _BaatYiState(this.title);
}

class _BaatYiState extends State<BaatYi> {
  final String title;

  _BaatYiState(this.title);

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
      body: ListView.builder(
          itemCount: listNoms.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text('${index + 1}'),
              title: Text('${listNoms[index]}'),
            );
          }),
    );
  }
}
