import 'package:flutter/material.dart';
import 'package:precolombina/models/artwork.dart';

class ProductoItem extends StatelessWidget {
  final Artwork miArtwork;
  ProductoItem({Key key, @required this.miArtwork}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 6.0, left: 10.0, top: 16.0, bottom: 16.0),
      width: 132.0,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(Radius.circular(25.0))),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
        child: Image.network(
          miArtwork.image,
          width: 130.0,
          height: 130.0,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
