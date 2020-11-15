import 'package:flutter/material.dart';
import 'package:precolombina/models/artwork.dart';

class Literaria extends StatelessWidget {
  final Artwork miArtwork;
  Literaria({Key key, @required this.miArtwork}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      width: 166.0,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(Radius.circular(25.0))),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
        child: Image.network(
          miArtwork.image,
          width: 165.0,
          height: 165.0,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
