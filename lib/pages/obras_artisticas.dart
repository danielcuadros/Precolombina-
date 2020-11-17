import 'package:flutter/material.dart';
import 'package:precolombina/models/artwork.dart';
import 'package:precolombina/services/precolombina_service_firebase.dart';
import 'package:precolombina/widgets/producto_literarias.dart';

import 'icons_daniel_icons.dart';

class ObrasArtisticas extends StatefulWidget {
  ObrasArtisticas({Key key}) : super(key: key);
  static final String namePage = "obrasartisticas";

  @override
  _ObrasArtisticasState createState() => _ObrasArtisticasState();
}

class _ObrasArtisticasState extends State<ObrasArtisticas> {
  List<Artwork> artworks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(17, 21, 28, 1),
        leading: new IconButton(
          icon: new Icon(
            IconsDaniel.vector_3,
            color: Color.fromRGBO(6, 123, 194, 100),
            size: 40.0,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: Color.fromRGBO(17, 21, 28, 1),
      body: Container(
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
                        SizedBox(height: 10.0),
                        _cargarartisticas(),
                      ],
                    );
                  } else {}
                }),
          ),
        ),
      ),
    );
  }

  Widget _cargarartisticas() {
    return Container(
        height: 600.0,
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
