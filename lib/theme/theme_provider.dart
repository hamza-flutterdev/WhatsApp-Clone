import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;
  static const String themeKey = 'theme_mode';

  ThemeMode get themeMode => _themeMode;

  ThemeProvider() {
    _loadThemeFromPrefs();
  }

  Future<void> _loadThemeFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final themeValue = prefs.getString(themeKey);

    if (themeValue != null) {
      switch (themeValue) {
        case 'light':
          _themeMode = ThemeMode.light;
          break;
        case 'dark':
          _themeMode = ThemeMode.dark;
          break;
        case 'system':
        default:
          _themeMode = ThemeMode.system;
          break;
      }
    }

    notifyListeners();
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    if (_themeMode == mode) return;

    _themeMode = mode;
    notifyListeners();

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String themeValue;

    switch (mode) {
      case ThemeMode.light:
        themeValue = 'light';
        break;
      case ThemeMode.dark:
        themeValue = 'dark';
        break;
      case ThemeMode.system:
        themeValue = 'system';
        break;
    }

    await prefs.setString(themeKey, themeValue);
    notifyListeners();
  }

  void toggleTheme() {
    setThemeMode(
      _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light,
    );
  }
}
