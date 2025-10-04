import 'package:eco_simple_tasks/widgets/eco_text.dart';
import 'package:flutter/material.dart';

class EcoLargeButton extends StatelessWidget {
  final Color backgroundColor;
  final String buttonText;
  final Color buttonTextColor;

  const EcoLargeButton({
    super.key,
    required this.backgroundColor,
    required this.buttonText,
    required this.buttonTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: EcoText(
        text:  buttonText,
        fontSize: 16, 
        color: buttonTextColor,
      )
    );
  }
}