import 'package:flutter/material.dart';
import 'wtw_theme_extension.dart';
import 'wtw_theme.dart';

enum WTWThemeEnums {
  light,
  dark
}

abstract class WTWThemeService {

  WTWTheme? lightTheme;
  void setLightTheme(WTWTheme? wtTheme);
  void useLightTheme();

  WTWTheme? darkTheme;
  void setDarkTheme(WTWTheme? wtTheme);
  void useDarkTheme();

  WTWTheme? theme;
  ThemeData? themeData;
  WTWThemeExtension? themeExtension;

  List<Map<String, dynamic>> themes = List<Map<String, dynamic>>.empty(growable: true);
  void setTheme({ WTWThemeEnums? wtType, WTWTheme? wtTheme });
  void addTheme(WTWTheme? theme) { themes.add({ 'key': themes.length + 1, 'name': theme!.name, 'data': theme }); }
  List<Map<String, dynamic>>? getThemes() { return themes; }
  void updateTheme(String? name) {
    if(name == WTWThemeEnums.light.name) { useLightTheme(); }
    if(name == WTWThemeEnums.dark.name) { useDarkTheme(); }
  }

}