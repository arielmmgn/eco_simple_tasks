import 'package:flutter/material.dart';

class EcoColors {
  static Color primary(double opacity) => 
    Color.fromRGBO(159, 102, 233, opacity);

  static Color white(double opacity) =>
    Color.fromRGBO(255, 255, 255, opacity);

  static Color card(double opacity) =>
    Color.fromRGBO(186, 241, 211, opacity);

  static Color unselect(double opacity) =>
    Color.fromRGBO(80, 71, 87, opacity);

  static Color black(double opacity) =>
    Color.fromRGBO(0, 0, 0, opacity);

  static Color dark(double opacity) =>
    Color.fromRGBO(24, 18, 29, opacity);
}