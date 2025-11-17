import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPref {
  static const localeKey = 'app_locale';
  static const themeKey = 'app_theme';
  static Future<void> setAppLocale(String locale) async {
    final sharePref = await SharedPreferences.getInstance();
    sharePref.setString(localeKey, locale);
  }

  static Future<String> getAppLocale() async {
    final sharePref = await SharedPreferences.getInstance();
    return sharePref.getString(localeKey) ?? 'en';
  }

 static Future<void> setAppTheme(String theme) async {
    final sharePref = await SharedPreferences.getInstance();
    sharePref.setString(themeKey, theme);
  }

  static Future<ThemeMode> getAppTheme() async {
    final sharePref = await SharedPreferences.getInstance();
    return sharePref.getString(themeKey) == 'light' ? ThemeMode.light : ThemeMode.dark;
  }
}
