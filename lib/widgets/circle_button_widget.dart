import 'package:flutter/material.dart';

class CircleButtonWidget extends StatelessWidget {
  final double height;
  final double width;
  final Icon icon;

  final Function onTap;

  CircleButtonWidget(
      {Key key,
      this.height = 63.0,
      this.width = 63.0,
      @required this.icon,
      @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("oprimi el botón");
        onTap();
      },
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromRGBO(17, 21, 28, 1),
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  blurRadius: 6.0,
                  offset: Offset(0.0, 2.0))
            ]),
        height: height,
        width: width,
        child: icon,
      ),
    );
  }
}
