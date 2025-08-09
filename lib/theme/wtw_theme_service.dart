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

  void setTheme({ WTWThemeEnums? wtType, WTWTheme? wtTheme });

}
