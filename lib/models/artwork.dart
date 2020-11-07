import 'package:flutter/widgets.dart';

class Artwork {
  bool product;
  String tipe;
  String image;
  double price;
  double quantity;
  String description;

  Artwork(
      {@required bool product,
      @required String tipe,
      @required String image,
      @required double price,
      @required double quantity,
      @required String description}) {
    this.product = product;
    this.tipe = tipe;
    this.image = image;
    this.price = price;
    this.quantity = quantity;
    this.description = description;
  }

  bool get productA => product;

  String get tipeU => tipe;

  String get imageU => image;

  double get priceU => price;

  double get quantityU => quantity;

  String get descriptionU => description;

  set tipeU(String tipe) {
    this.tipe = tipe;
  }

  set imageU(String image) {
    this.image = image;
  }

  set priceU(double price) {
    this.price = price;
  }

  set quantityU(double quantify) {
    this.quantity = quantify;
  }

  set descriptionU(String description) {
    this.description = description;
  }
}
