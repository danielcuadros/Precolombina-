import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:precolombina/pages/add_product.dart';
import 'package:precolombina/screens/favoritos_screen.dart';
import 'package:precolombina/screens/notificaciones_screen.dart';
import 'package:precolombina/screens/perfil_screen.dart';
import 'package:precolombina/screens/telento_screen.dart';
import 'package:precolombina/screens/tienda_screen.dart';

import 'icons_daniel_icons.dart';

class Store extends StatefulWidget {
  const Store({Key key}) : super(key: key);
  static final String namePage = "store";

  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  int seleccionado = 0;
  List<Widget> navegacion = [];

  @override
  void initState() {
    super.initState();
    navegacion.add(Tienda());
    navegacion.add(Talento());
    navegacion.add(Favoritos());
    navegacion.add(Notidicaciones());
    navegacion.add(Perfil());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(17, 21, 28, 1),
        leading: new IconButton(
          icon: new Icon(
            IconsDaniel.vector_4,
            color: Color.fromRGBO(6, 123, 194, 100),
            size: 40.0,
          ),
          onPressed: () => Navigator.pushNamed(context, AddProduct.namePage),
        ),
        title: Title(
          color: Colors.white,
          child: Text(
            'Precolombina',
            style: GoogleFonts.arimaMadurai(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 28.0,
              ),
            ),
          ),
        ),
        actions: [
          Icon(
            IconsDaniel.vector_7,
            color: Color.fromRGBO(6, 123, 194, 100),
            size: 40.0,
          ),
          SizedBox(
            width: 24.0,
          ),
        ],
      ),
      body: navegacion[seleccionado],
      backgroundColor: Color.fromRGBO(17, 21, 28, 1),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          print("seleccionó: $value");
          seleccionado = value;
          setState(() {});
        },
        selectedIconTheme: IconThemeData(
          color: Color.fromRGBO(201, 3, 3, 100),
        ),
        selectedItemColor: Color.fromRGBO(201, 3, 3, 100),
        unselectedIconTheme: IconThemeData(color: Colors.black),
        unselectedItemColor: Colors.black,
        currentIndex: seleccionado,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(17, 21, 30, 1),
            icon: Icon(
              IconsDaniel.vector_5,
              size: 38,
            ),
            label: "Tienda",
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(17, 21, 28, 1),
            icon: Icon(
              IconsDaniel.vector_6,
              size: 38,
            ),
            label: "Talento",
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(17, 21, 28, 1),
            icon: Icon(
              IconsDaniel.vector_9,
              size: 38,
            ),
            label: "Favoritos",
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(17, 21, 28, 1),
            icon: Icon(
              IconsDaniel.vector_8,
              size: 38,
            ),
            label: "Notificaciones",
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(17, 21, 28, 1),
            icon: Icon(
              IconsDaniel.group_14,
              size: 38,
            ),
            label: "Perfil",
          ),
        ],
      ),
    );
  }
}
