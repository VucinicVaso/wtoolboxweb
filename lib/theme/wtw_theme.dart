import 'package:flutter/material.dart';
import 'wtw_theme_extension.dart';

abstract class WTWTheme {

  String? name;
  void setName(String? v);
  String? getName();

  ThemeData? themeData;
  void setThemeData();  
  ThemeData? getThemeData();

  WTWThemeExtension? themeExtension;
  void setThemeExtension();  
  WTWThemeExtension? getThemeExtension();

}