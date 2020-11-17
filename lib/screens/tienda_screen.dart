import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:precolombina/models/artwork.dart';
import 'package:precolombina/services/precolombina_service_firebase.dart';
import 'package:precolombina/widgets/producto_Item.dart';
import 'package:precolombina/widgets/producto_literarias.dart';

class Tienda extends StatefulWidget {
  Tienda({Key key}) : super(key: key);

  @override
  _TiendaState createState() => _TiendaState();
}

class _TiendaState extends State<Tienda> {
  int seleccionado = 0;
  List<Artwork> artworks = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Center(
          child: FutureBuilder(
              future: PrecolombinaService.obtenerTodoArtwork(),
              //
              builder:
                  // ignore: missing_return
                  (BuildContext context, AsyncSnapshot<List<Artwork>> datos) {
                if (datos.hasData) {
                  artworks = datos.data;
                  return Column(
                    children: [
                      _frecuentes(),
                      SizedBox(height: 10.0),
                      _cargarfrecuentes(),
                      _obrasliterarias(),
                      SizedBox(height: 10.0),
                      _cargarliterarias(),
                      _obrasartisticas(),
                      SizedBox(height: 10.0),
                      _cargarartisticas(),
                    ],
                  );
                } else {}
              }),
        ),
      ),
    );
  }

  Widget _frecuentes() {
    return Container(
      margin: EdgeInsets.only(top: 20.0, left: 24.0),
      width: 380.0,
      child: Text(
        "Frecuentes",
        style: GoogleFonts.roboto(
          textStyle: TextStyle(color: Colors.white, fontSize: 30.0),
        ),
      ),
    );
  }

  Widget _cargarfrecuentes() {
    return Container(
        height: 180.0,
        width: 380.0,
        margin: EdgeInsets.only(right: 16.0, left: 16.0),
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.all(Radius.circular(25.0))),
        child: Container(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: _items(artworks),
          ),
        ));
  }

  Widget _obrasliterarias() {
    return Container(
      margin: EdgeInsets.only(top: 20.0, left: 24.0),
      width: 380.0,
      child: Text(
        "Obras literarias",
        style: GoogleFonts.roboto(
          textStyle: TextStyle(color: Colors.white, fontSize: 30.0),
        ),
      ),
    );
  }

  Widget _cargarliterarias() {
    return Container(
        height: 284.0,
        width: 380.0,
        margin: EdgeInsets.only(right: 16.0, left: 16.0),
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.all(Radius.circular(25.0))),
        child: Container(
          child: GridView.count(
            scrollDirection: Axis.vertical,
            crossAxisCount: 2,
            children: _obras(artworks),
          ),
        ));
  }

  Widget _obrasartisticas() {
    return Container(
      margin: EdgeInsets.only(top: 20.0, left: 24.0),
      width: 380.0,
      child: Text(
        "Obras artisticas",
        style: GoogleFonts.roboto(
          textStyle: TextStyle(color: Colors.white, fontSize: 30.0),
        ),
      ),
    );
  }

  Widget _cargarartisticas() {
    return Container(
        height: 284.0,
        width: 380.0,
        margin: EdgeInsets.only(right: 16.0, left: 16.0),
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.all(Radius.circular(25.0))),
        child: Container(
          child: GridView.count(
            scrollDirection: Axis.vertical,
            crossAxisCount: 2,
            children: _artistas(artworks),
          ),
        ));
  }

  List<Widget> _items(List<Artwork> listado) {
    List<Widget> elementos = [];
    for (Artwork item in listado) {
      elementos.add(ProductoItem(
        miArtwork: item,
      ));
    }

    return elementos;
  }

  List<Widget> _obras(List<Artwork> listado) {
    List<Widget> elementos = [];
    for (Artwork item in listado) {
      if (item.tipe.toString() == "Obra literaria") {
        elementos.add(Literaria(
          miArtwork: item,
        ));
      }
    }
    return elementos;
  }

  List<Widget> _artistas(List<Artwork> listado) {
    List<Widget> elementos = [];
    for (Artwork item in listado) {
      print(item.tipe.toString());
      if (item.tipe.toString() == "Obra artistica") {
        elementos.add(Literaria(
          miArtwork: item,
        ));
      }
    }
    return elementos;
  }
}
