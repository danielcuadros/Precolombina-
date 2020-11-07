import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:precolombina/bloc/splash_screen_bloc.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key key}) : super(key: key);
  static const Duration zero = const Duration(seconds: 5);
  static final String namePage = "first";

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  void initState() {
    super.initState();
    this._dispatchEvent(context);
  }

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

  void _dispatchEvent(BuildContext context) {
    BlocProvider.of<SplashScreenBloc>(context).dispatch(
      NavigateToHomeScreenEvent(),
    );
  }
}
