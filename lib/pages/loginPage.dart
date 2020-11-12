import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:precolombina/pages/icons_daniel_icons.dart';
import 'package:precolombina/pages/register_page.dart';
import 'package:precolombina/pages/store.dart';
import 'package:precolombina/widgets/circle_button_widget.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({Key key}) : super(key: key);
  static final String namePage = "login";
  TextEditingController tecCorreo = TextEditingController();
  TextEditingController tecPassword = TextEditingController();
  var myContext;

  @override
  Widget build(BuildContext context) {
    myContext = context;
    return Scaffold(
      backgroundColor: Color.fromRGBO(17, 21, 28, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 100.0),
              child: Center(
                child: Text(
                  "Precolombina",
                  style: GoogleFonts.arimaMadurai(
                    textStyle: TextStyle(color: Colors.white, fontSize: 48.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 70.0),
            _user(),
            SizedBox(height: 50.0),
            _pass(),
            SizedBox(height: 10.0),
            _remember(),
            SizedBox(height: 30.0),
            _init(),
            SizedBox(height: 40.0),
            _line(),
            SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleButtonWidget(
                  icon: Icon(
                    IconsDaniel.twitter,
                    size: 63.0,
                    color: Color.fromRGBO(0, 170, 193, 100),
                  ),
                  onTap: () {
                    print("Botton twitter");
                  },
                ),
                CircleButtonWidget(
                  icon: Icon(
                    IconsDaniel.vector_1,
                    size: 63.0,
                    color: Color.fromRGBO(0, 87, 188, 100),
                  ),
                  onTap: () {
                    print("Botton facebook");
                  },
                ),
                CircleButtonWidget(
                  icon: Icon(
                    IconsDaniel.vector_2,
                    size: 63.0,
                    color: Color.fromRGBO(201, 3, 3, 100),
                  ),
                  onTap: () {
                    print("Botton google");
                  },
                ),
              ],
            ),
            SizedBox(
              height: 60.0,
            ),
            _resgistrer()
          ],
        ),
      ),
    );
  }

  // ignore: unused_element
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
              controller: tecCorreo,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Usuario o correo electronico',
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

  Widget _remember() {
    return Container(
      margin: EdgeInsets.only(left: 160.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FlatButton(
            onPressed: null,
            child: Text(
              "¿Olvidaste tu contraseña?",
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget _init() {
    return Container(
      height: 65.0,
      width: 347.0,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        onPressed: () {
          print("usuario: ${tecCorreo.text}, pass: ${tecPassword.text}");
          if (tecCorreo.text.trim() == "juan@correo.com" &&
              tecPassword.text == "123456") {
            print("bien...");
            Navigator.pushNamed(myContext, Store.namePage, arguments: {
              "correo": tecCorreo.text.trim(),
            });
          } else {
            print("mal...");
          }
        },
        child: Text(
          "Iniciar Sesión",
          style: GoogleFonts.roboto(
            textStyle: TextStyle(color: Colors.white, fontSize: 24.0),
          ),
        ),
        color: Color.fromRGBO(6, 123, 194, 100),
      ),
    );
  }

  Widget _line() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20.0),
            height: 1.0,
            width: 140.0,
            color: Colors.white,
          ),
          Text(
            "O",
            style: GoogleFonts.roboto(
              textStyle: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20.0),
            height: 1.0,
            width: 140.0,
            color: Colors.white,
          ),
        ],
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
          Navigator.pushNamed(myContext, Registrer.namePage);
        },
        child: Text(
          "¿No tienes una cuenta? Registrate",
          style: GoogleFonts.roboto(
            textStyle: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        ),
        color: Color.fromRGBO(6, 123, 194, 100),
      ),
    );
  }
}
