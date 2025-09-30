import 'package:eco_simple_tasks/pages/home.dart';
import 'package:flutter/material.dart';

class EcoRoutes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => Home(),
  };
}