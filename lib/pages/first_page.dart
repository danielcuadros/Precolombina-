import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key key}) : super(key: key);
  static const Duration zero = const Duration(seconds: 5);
  static final String namePage = "first";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(17, 21, 28, 1),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 500.0,
                child: Image(
                  image: AssetImage(
                    'assets/images/icon1.png',
                  ),
                ),
              ),
              Text(
                'Precolombina',
                style: GoogleFonts.arimaMadurai(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
