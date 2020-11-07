import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:precolombina/bloc/splash_screen_bloc.dart';
import 'package:precolombina/widgets/first_page.dart';
import 'package:precolombina/pages/loginPage.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  BlocProvider<SplashScreenBloc> _buildBody(BuildContext context) {
    return BlocProvider(
      builder: (context) => SplashScreenBloc(),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(child: BlocBuilder<SplashScreenBloc, SplashScreenState>(
          builder: (context, state) {
            if ((state is Initial) || (state is Loading)) {
              return FirstPage();
            } else {
              return LoginPage();
            }
          },
        )),
      ),
    );
  }
}
