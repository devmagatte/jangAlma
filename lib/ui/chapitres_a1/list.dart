import 'package:cours_allemand/data/list_chapitres_a1.dart';
import 'package:cours_allemand/ui/chapitres_a1/utils.dart';
import 'package:flutter/material.dart';
import 'package:auto_animated/auto_animated.dart';

// 70 753 10 85
//76 652 5904
class ListBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(height: 10),
              Expanded(
                child: VerticalExample(),
              ),
            ],
          ),
        ),
      );
}

class VerticalExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LiveList(
      showItemInterval: Duration(milliseconds: 150),
      showItemDuration: Duration(milliseconds: 350),
      // padding: EdgeInsets.all(16),
      reAnimateOnVisibility: true,
      scrollDirection: Axis.vertical,
      itemCount: listChapitresA1.length,
      itemBuilder: animationItemBuilder(
          (index) => Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.green, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 5,
                child: ListTile(
                  leading: ClipOval(
                    child: Container(
                      width: 35,
                      height: 35,
                      color: Colors.green,
                      child: Center(
                        child: Text(
                          '${index + 1}',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  title: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "${listChapitresA1[index]}",
                        style: TextStyle(
                          color: Colors.green,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ),
                  onTap: () =>
                      _ontClikChapitre(context, listChapitresA1[index]),
                ),
              ),
          padding: EdgeInsets.symmetric(vertical: 2)),
    );
  }

  _ontClikChapitre(context, String chapitre) {
    Navigator.pushNamed(
      context,
      "${chapitre.replaceAll(' ', '').toLowerCase()}",
      arguments: '$chapitre',
    );
  }
}
