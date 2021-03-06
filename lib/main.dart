import 'package:flutter/material.dart';
import 'package:precolombina/pages/add_product.dart';
import 'package:precolombina/pages/loginPage.dart';
import 'package:precolombina/pages/obras_artisticas.dart';
import 'package:precolombina/pages/obras_literarias.dart';
import 'package:precolombina/pages/register_page.dart';
import 'package:precolombina/pages/splash_screen.dart';
import 'package:precolombina/pages/store.dart';

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
        // ignore: non_constant_identifier_names
        Registrer.namePage: (BuildContext) => Registrer(),
        // ignore: non_constant_identifier_names
        Store.namePage: (BuildContext) => Store(),
        // ignore: non_constant_identifier_names
        AddProduct.namePage: (BuildContext) => AddProduct(),
        // ignore: non_constant_identifier_names
        ObrasLiterarias.namePage: (BuildContext) => ObrasLiterarias(),
        // ignore: non_constant_identifier_names
        ObrasArtisticas.namePage: (BuildContext) => ObrasArtisticas(),
      },
    );
  }
}
