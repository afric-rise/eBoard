import 'package:flutter/material.dart';

class ApplicationStyle {
  static TextStyle getStyle(bool bold, double fontSize, Color? color) {
    return TextStyle(
        fontFamily: "Popins",
        fontSize: fontSize,
        color: color,
        fontWeight: bold ? FontWeight.bold : null);
  }
}
