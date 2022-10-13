import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  static late SharedPreferences _instance;
  static Future<void> init() async {
    _instance = await SharedPreferences.getInstance();
  }

  // Save key-value to local storage
  static Future<void> save(String key, String value) async {
    await _instance.setString(key, value);
  }

  // Load key-value from local storage
  static String? load(String key) {
    return _instance.getString(key);
  }
}
