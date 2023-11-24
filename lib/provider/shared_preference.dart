import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeChanger with ChangeNotifier {
  late ThemeData _themeData;
  bool _isDarkTheme;

  ThemeChanger(this._isDarkTheme) {
    _themeData = _isDarkTheme ? ThemeData.dark() : ThemeData.light();
  }

  ThemeData getTheme() => _themeData;

  bool get isDarkTheme => _isDarkTheme;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    _themeData = _isDarkTheme ? ThemeData.dark() : ThemeData.light();
    _saveThemePreference();
    notifyListeners();
  }

  Future<void> _saveThemePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDarkTheme', _isDarkTheme);
  }

  Future<void> loadThemePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _isDarkTheme = prefs.getBool('isDarkTheme') ?? false;
    _themeData = _isDarkTheme ? ThemeData.dark() : ThemeData.light();
    notifyListeners();
  }
}
