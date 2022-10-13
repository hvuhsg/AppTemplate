import 'package:flutter/material.dart';
import '../services/local_storage.dart';

class SettingsProvider with ChangeNotifier {
  late ThemeMode _themeMode;

  SettingsProvider() {
    // Load from local storage
    String themeModeStr =
        LocalStorageService.load("themeMode") ?? "ThemeMode.system";

    switch (themeModeStr) {
      case "ThemeMode.light":
        _themeMode = ThemeMode.light;
        break;
      case "ThemeMode.dark":
        _themeMode = ThemeMode.dark;
        break;
      case "ThemeMode.system":
        _themeMode = ThemeMode.system;
        break;
      default:
        // Invalid value ignored
        _themeMode = ThemeMode.system;
    }
  }

  ThemeMode get themeMode => _themeMode;

  void updateThemeMode(ThemeMode? newThemeMode) async {
    if (newThemeMode == null) return;

    // Do not perform any work if new and old ThemeMode are identical
    if (newThemeMode == _themeMode) return;

    // Otherwise, store the new ThemeMode in memory
    _themeMode = newThemeMode;
    notifyListeners();

    // Save to local storage
    await LocalStorageService.save("themeMode", newThemeMode.toString());
  }
}
