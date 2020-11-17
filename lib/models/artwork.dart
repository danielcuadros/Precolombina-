import 'package:flutter/widgets.dart';

class Artwork {
  bool product;
  String name;
  String id;
  String tipe;
  String image;
  int price;
  int quantity;
  String description;

  Artwork(
      {String id,
      @required bool product,
      @required String name,
      @required String tipe,
      @required String image,
      @required int price,
      @required int quantity,
      @required String description}) {
    this.id = id;
    this.product = product;
    this.name = name;
    this.tipe = tipe;
    this.image = image;
    this.price = price;
    this.quantity = quantity;
    this.description = description;
  }

  bool get productA => product;

  String get tipeU => tipe;

  String get nameU => name;

  String get imageU => image;

  int get priceU => price;

  int get quantityU => quantity;

  String get descriptionU => description;

  set tipeU(String tipe) {
    this.tipe = tipe;
  }

  set nameU(String name) {
    this.name = name;
  }

  set imageU(String image) {
    this.image = image;
  }

  set priceU(int price) {
    this.price = price;
  }

  set quantityU(int quantify) {
    this.quantity = quantify;
  }

  set descriptionU(String description) {
    this.description = description;
  }

  @override
  String toString() {
    // ignore: todo
    // TODO: implement toString
    return super.toString();
  }
}
