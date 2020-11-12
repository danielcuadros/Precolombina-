import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:precolombina/pages/icons_daniel_icons.dart';
import 'package:precolombina/pages/loginPage.dart';

// ignore: must_be_immutable
class Registrer extends StatelessWidget {
  Registrer({Key key}) : super(key: key);
  static final String namePage = "register";

  TextEditingController tecCorreo = TextEditingController();
  TextEditingController tecUser = TextEditingController();
  TextEditingController tecPassword = TextEditingController();
  TextEditingController tecValidate = TextEditingController();
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
          )),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 40.0,
                ),
                _user(),
                SizedBox(
                  height: 40.0,
                ),
                _email(),
                SizedBox(
                  height: 40.0,
                ),
                _pass(),
                SizedBox(
                  height: 40.0,
                ),
                _validatepass(),
                SizedBox(
                  height: 40.0,
                ),
                _number(),
                SizedBox(
                  height: 40.0,
                ),
                _resgistrer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _user() {
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
              controller: tecUser,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nombre de usuario',
                  isDense: true,
                  contentPadding: EdgeInsets.all(25.0)),
            ),
          ),
        ),
      ),
    );
  }

  Widget _email() {
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
              controller: tecUser,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Correo electronico',
                  isDense: true,
                  contentPadding: EdgeInsets.all(25.0)),
            ),
          ),
        ),
      ),
    );
  }

  Widget _pass() {
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
              obscureText: true,
              controller: tecPassword,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Contraseña',
                  isDense: true,
                  contentPadding: EdgeInsets.all(25.0)),
            ),
          ),
        ),
      ),
    );
  }

  Widget _validatepass() {
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
              obscureText: true,
              controller: tecValidate,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Validación de contraseña',
                  isDense: true,
                  contentPadding: EdgeInsets.all(25.0)),
            ),
          ),
        ),
      ),
    );
  }

  Widget _number() {
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
              obscureText: true,
              controller: tecValidate,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Numero celular',
                  isDense: true,
                  contentPadding: EdgeInsets.all(25.0)),
            ),
          ),
        ),
      ),
    );
  }

  Widget _resgistrer() {
    return Container(
      height: 65.0,
      width: double.maxFinite,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        onPressed: () {
          Navigator.pushNamed(myContext, LoginPage.namePage);
        },
        child: Text(
          "Crear cuenta",
          style: GoogleFonts.roboto(
            textStyle: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        ),
        color: Color.fromRGBO(6, 123, 194, 100),
      ),
    );
  }
}
