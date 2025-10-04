import 'package:eco_simple_tasks/core/eco_colors.dart';
import 'package:eco_simple_tasks/widgets/eco_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EcoBar {
  static AppBar bar({
    required String text,
  }) {
    return AppBar(
      backgroundColor: EcoColors.primary(1),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            CupertinoIcons.rectangle_grid_2x2_fill,
            color: EcoColors.white(1),
          ),

          Center(
            child: EcoText(
              text: text,
              fontSize: 20,
            ),
          ),

          Icon(CupertinoIcons.clock, color: EcoColors.white(1)),
        ],
      ),
    );
  }
}
