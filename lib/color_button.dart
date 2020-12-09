import 'package:flutter/material.dart';

class ColorButton extends StatelessWidget {
  final Color boxColor;
  final Function changeColor;
  final String colorName;

  ColorButton({this.boxColor, this.colorName, this.changeColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        child: Text(colorName),
        color: boxColor,
        onPressed: () {
          changeColor(boxColor);
        },
      ),
    );
  }
}
