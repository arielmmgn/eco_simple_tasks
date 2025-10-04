import 'package:eco_simple_tasks/pages/categories.dart';
import 'package:eco_simple_tasks/pages/home.dart';
import 'package:get/get.dart';

class EcoRoutes {
  static final List<GetPage<dynamic>> getPages = [
    GetPage(name: '/', page: () => Home()),
    GetPage(name: '/categories', page: () => Categories()),
  ];
}