import 'package:cours_allemand/ui/chapitres_a1/chapitresA1.dart';
import 'package:cours_allemand/ui/chapitres_a1/view_contain_chapitre/das_alphabet.dart';
import 'package:cours_allemand/ui/chapitres_a1/view_contain_chapitre/die_BegruBungen.dart';
import 'package:cours_allemand/ui/chapitres_a1/view_contain_chapitre/die_familie.dart';
import 'package:cours_allemand/ui/chapitres_a1/view_contain_chapitre/sich_vorstellen.dart';
import 'package:cours_allemand/ui/chapitres_a1/view_contain_chapitre/baat_yi.dart';

import 'package:cours_allemand/ui/home/home_view.dart';
import 'package:flutter/material.dart';
import '../ui/chapitres_a1/view_contain_chapitre/die_arbeit.dart';
import 'routeName.dart';

class RouteGeerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '$initRoute':
        return MaterialPageRoute(
          builder: (_) => HomeView(
            title: args.toString(),
          ),
        );
      case '$ListChapitresa1':
        return MaterialPageRoute(
          builder: (_) => ChapittreA1(
            title: args.toString(),
          ),
        );
      case '$dasAplhabet':
        return MaterialPageRoute(
          builder: (_) => DasAlphabet(
            title: args.toString(),
          ),
        );
      case '$dieBegruBungen':
        return MaterialPageRoute(
          builder: (_) => DieBegruBungen(
            title: args.toString(),
          ),
        );
      case '$sichvorstellen':
        return MaterialPageRoute(
          builder: (_) => SichVorstellen(
            title: args.toString(),
          ),
        );
      case '$diefamilie':
        return MaterialPageRoute(
          builder: (_) => DieFamilie(
            title: args.toString(),
          ),
        );
      case '$BaatYiRoute':
        return MaterialPageRoute(
          builder: (_) => BaatYi(
            title: args.toString(),
          ),
        );
      case '$dieArbeit':
        return MaterialPageRoute(
          builder: (_) => DieArbeit(
            title: args.toString(),
          ),
        );

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('Route not found'),
        ),
      );
    });
  }
}
