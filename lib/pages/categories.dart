import 'package:eco_simple_tasks/core/eco_colors.dart';
import 'package:eco_simple_tasks/widgets/eco_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: EcoColors.white(1),
      appBar: EcoBar.bar(
        backgroundColor: EcoColors.white(1),
        text: 'Categories',
        titleColor: EcoColors.black(1),
        actionsRight: [
          Icon(CupertinoIcons.clock, color: EcoColors.black(1)),
        ]
      ),
      body: Center(
        child: Text('Categories Page'),
      ),
    );
  }
}