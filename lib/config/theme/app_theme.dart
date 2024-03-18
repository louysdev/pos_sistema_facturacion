import 'package:flutter/material.dart';

const List<Color> _colorList = [
  Color(0xff083D77),
  Color(0xff4C6CAC),
  Color(0xffE5F0FF),
  Color(0xffD6A419),
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0});

  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: _colorList[selectedColor],
    );
  }
}
