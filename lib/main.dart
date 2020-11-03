import 'package:flutter/material.dart';
import 'package:precolombina/pages/first_page.dart';
import 'package:precolombina/pages/loginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App', home: FirstPage(),
      // ignore: non_constant_identifier_names
      routes: {
        LoginPage.namePage: (BuildContext) => LoginPage(),
      },
    );
  }
}
