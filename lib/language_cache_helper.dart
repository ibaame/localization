import 'package:shared_preferences/shared_preferences.dart';

class LanguageCacheHelper {
  Future<void> saveLanguageCode(String languageCode) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("LOCALE", languageCode);
  }

  Future<String> getLanguageCode() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString("LOCALE") ?? 'en';
  }
}
