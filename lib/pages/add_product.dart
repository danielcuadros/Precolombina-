import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:precolombina/models/artwork.dart';
import 'package:precolombina/pages/store.dart';
import 'package:precolombina/services/precolombina_service_firebase.dart';

import 'icons_daniel_icons.dart';

// ignore: must_be_immutable
class AddProduct extends StatefulWidget {
  AddProduct({Key key}) : super(key: key);
  static final String namePage = "add";

  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  TextEditingController tecType = TextEditingController();
  TextEditingController tecUrl = TextEditingController();
  TextEditingController tecName = TextEditingController();
  TextEditingController tecCant = TextEditingController();
  TextEditingController tecPrecio = TextEditingController();
  TextEditingController tecDes = TextEditingController();
  List<Artwork> artworks = [];
  var myContext;

  @override
  Widget build(BuildContext context) {
    myContext = context;
    return Scaffold(
      backgroundColor: Color.fromRGBO(17, 21, 28, 1),
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
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 30.0,
                ),
                _tipo(),
                SizedBox(
                  height: 30.0,
                ),
                _imagen(),
                SizedBox(
                  height: 30.0,
                ),
                _nombre(),
                SizedBox(
                  height: 30.0,
                ),
                _cantidad(),
                SizedBox(
                  height: 30.0,
                ),
                _precio(),
                SizedBox(
                  height: 30.0,
                ),
                _descripcion(),
                SizedBox(
                  height: 30.0,
                ),
                _subir(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _imagen() {
    return Container(
      height: 65.0,
      width: 347.0,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          child: Expanded(
            child: TextField(
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              obscureText: false,
              controller: tecUrl,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Ingresar Url de la imagen',
                  isDense: true,
                  contentPadding: EdgeInsets.all(25.0)),
            ),
          ),
        ),
      ),
    );
  }

  Widget _nombre() {
    return Container(
      height: 65.0,
      width: 347.0,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          child: Expanded(
            child: TextField(
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              obscureText: false,
              controller: tecName,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Ingresar nombre ',
                  isDense: true,
                  contentPadding: EdgeInsets.all(25.0)),
            ),
          ),
        ),
      ),
    );
  }

  Widget _cantidad() {
    return Container(
      height: 65.0,
      width: 347.0,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          child: Expanded(
            child: TextField(
              keyboardType: TextInputType.number,
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              obscureText: false,
              controller: tecCant,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Ingresar cantidad ',
                  isDense: true,
                  contentPadding: EdgeInsets.all(25.0)),
            ),
          ),
        ),
      ),
    );
  }

  Widget _precio() {
    return Container(
      height: 65.0,
      width: 347.0,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          child: Expanded(
            child: TextField(
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              obscureText: false,
              controller: tecPrecio,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Ingresar Precio',
                  isDense: true,
                  contentPadding: EdgeInsets.all(25.0)),
            ),
          ),
        ),
      ),
    );
  }

  Widget _tipo() {
    return Container(
      height: 65.0,
      width: 347.0,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          child: Expanded(
            child: TextField(
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              obscureText: false,
              controller: tecType,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Ingresar Obra literaria o artistica',
                  isDense: true,
                  contentPadding: EdgeInsets.all(25.0)),
            ),
          ),
        ),
      ),
    );
  }

  Widget _descripcion() {
    return Container(
      height: 65.0,
      width: 347.0,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          child: Expanded(
            child: TextField(
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              obscureText: false,
              maxLines: 8,
              controller: tecDes,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Ingresar descripcion',
                  isDense: true,
                  contentPadding: EdgeInsets.all(25.0)),
            ),
          ),
        ),
      ),
    );
  }

  Widget _subir() {
    return Container(
        height: 65.0,
        width: double.maxFinite,
        child: RaisedButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          onPressed: () {
            PrecolombinaService.sendData(
              tecName.text,
              tecUrl.text,
              tecType.text,
              tecDes.text,
              int.parse(tecPrecio.text),
              int.parse(tecCant.text),
            );
            setState(() {
              artworks.add(Artwork(
                name: tecName.text,
                image: tecUrl.text,
                description: tecDes.text,
                price: int.parse(tecPrecio.text),
                product: true,
                tipe: tecType.text,
                quantity: int.parse(tecCant.text),
              ));
            });
            Navigator.pushNamed(myContext, Store.namePage);
          },
          child: Text(
            "Subir",
            style: GoogleFonts.roboto(
              textStyle: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
          color: Color.fromRGBO(6, 123, 194, 100),
        ));
  }
}
