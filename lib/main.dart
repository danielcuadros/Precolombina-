import 'package:flutter/material.dart';
import 'package:precolombina/pages/loginPage.dart';
import 'package:precolombina/pages/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App', home: SplashScreen(),
      // ignore: non_constant_identifier_names
      routes: {
        // ignore: non_constant_identifier_names
        LoginPage.namePage: (BuildContext) => LoginPage(),
      },
    );
  }
}
