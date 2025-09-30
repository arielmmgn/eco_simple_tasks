import 'package:flutter/material.dart';

class EcoText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign? textAlign;

  const EcoText({
    super.key,
    required this.text,
    this.fontSize = 12.0, 
    this.fontWeight = FontWeight.normal,
    this.color = Colors.white,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: 'Gantari',
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color
      )
    );
  }
}