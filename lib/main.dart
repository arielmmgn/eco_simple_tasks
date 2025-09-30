import 'dart:ui';

import 'package:eco_simple_tasks/app.dart';
import 'package:eco_simple_tasks/core/local_storage.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  Locale locale = PlatformDispatcher.instance.locale;
  String appLocale =
    locale.languageCode == 'pt' && locale.countryCode == 'BR'
      ? 'pt_BR' 
      : 'en_US';

  // initialize date formatting for the selected locales
  await initializeDateFormatting(appLocale, null);

  // writes to storage
  await LocalStorage().saveLocale(appLocale);

  runApp(const App());
}
