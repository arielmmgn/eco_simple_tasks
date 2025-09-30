import 'package:get_storage/get_storage.dart';

class LocalStorage {
  final box = GetStorage();

  Future<void> saveLocale(String locale) async {
    await box.write('app_locale', locale);
  }

  String? getLocale() {
    return box.read('app_locale');
  }
}