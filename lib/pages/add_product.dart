import 'package:flutter/material.dart';

import 'icons_daniel_icons.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({Key key}) : super(key: key);
  static final String namePage = "add";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(17, 21, 28, 1),
        leading: new IconButton(
          icon: new Icon(
            IconsDaniel.vector_3,
            color: Color.fromRGBO(6, 123, 194, 100),
            size: 40.0,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }
}
