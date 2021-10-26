import 'package:cours_allemand/route/routeName.dart';
import 'package:cours_allemand/route/route_provider.dart';
import 'package:cours_allemand/ui/widget_util/setPreferrence_orientation.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // OrientationDevice.portraitLanscape();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JangAlma',
      theme: ThemeData(
        primaryColor: Colors.green,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
        ),
      ),
      initialRoute: "$initRoute",
      onGenerateRoute: RouteGeerator.generateRoute,
    );
  }
}
