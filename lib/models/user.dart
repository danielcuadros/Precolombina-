import 'package:flutter/widgets.dart';

class User {
  String image;
  String user;
  String email;
  String password;
  String validate;
  int number;

  User(
      {@required String image,
      @required String user,
      @required String email,
      @required String password,
      @required String validate,
      @required int number}) {
    this.image = image;
    this.user = user;
    this.email = email;
    this.password = password;
    this.validate = validate;
    this.number = number;
  }

  String get imageU => image;

  String get userU => user;

  String get emailU => email;

  String get passwordU => password;

  String get validateU => validate;

  int get numberU => number;

  set imageU(String image) {
    this.image = image;
  }

  set userU(String user) {
    this.user = user;
  }

  set emailU(String email) {
    this.email = email;
  }

  set passwordU(String password) {
    this.password = password;
  }

  set validateU(String validate) {
    this.validate = validate;
  }

  set numberU(int number) {
    this.number = number;
  }
}
