import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../utils/theme_mode.dart';

class ThemeModeNotifier extends ChangeNotifier {
  late ThemeMode _themeMode;

  ThemeModeNotifier(SharedPreferences pref) {
    _init();
  }

  ThemeMode get mode => _themeMode;

  void _init() async {
    _themeMode = await loadThemeMode();
    notifyListeners();
  }

  void update(ThemeMode nextMode) {
    _themeMode = nextMode;
    saveThemeMode(nextMode);
    notifyListeners();
  }
}
