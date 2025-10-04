import 'package:eco_simple_tasks/widgets/eco_text.dart';
import 'package:flutter/material.dart';

class EcoBar {
  static AppBar bar({
    required Color backgroundColor,
    required String text,
    Color titleColor = Colors.white,
    List<Widget> actionsLeft = const [],
    List<Widget> actionsRight = const [],
  }) {
    return AppBar(
      backgroundColor: backgroundColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: actionsLeft,
          ),

          Center(
            child: EcoText(
              text: text,
              fontSize: 20,
              color: titleColor,
            ),
          ),

          Column(
            children: actionsRight,
          ),
        ],
      ),
    );
  }
}
