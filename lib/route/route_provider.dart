import 'package:cours_allemand/ui/chapitres_a1/chapitresA1.dart';
import 'package:cours_allemand/ui/home/home_view.dart';
import 'package:flutter/material.dart';
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
