
import 'package:eco_simple_tasks/core/eco_routes.dart';
import 'package:eco_simple_tasks/core/eco_translations.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class App extends StatelessWidget {
  final String appLocale;

  const App({super.key, required this.appLocale});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'EcoTarefas',
      debugShowCheckedModeBanner: false,

      translations: EcoTranslations(),
      locale: Locale(appLocale.split('_')[0], appLocale.split('_')[1]),
      fallbackLocale: const Locale('en', 'US'),

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      
      initialRoute: '/',
      getPages: EcoRoutes.getPages
    );
  }
}