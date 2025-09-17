import 'package:flutter/material.dart';
import '../../external/lib_getx.dart';
import '../wtw_theme.dart';
import '../wtw_theme_service.dart';
import 'wtw_theme_dark.dart';
import 'wtw_theme_light.dart';

class WTWThemeServiceImpl extends WTWThemeService {

  WTWThemeServiceImpl() {
    setLightTheme(WTWThemeLight());
    setDarkTheme(WTWThemeDark());
    useLightTheme();
  }

  @override
  void setLightTheme(WTWTheme? wtTheme) {
    lightTheme = wtTheme;
    addTheme(wtTheme);
  }
  @override
  WTWTheme? getLightTheme() { return lightTheme; }
  @override
  void useLightTheme() {
    theme = lightTheme!;
    ThemeData themeData = lightTheme!.getThemeData()!;
    Get.changeTheme(themeData);
    Get.changeThemeMode(ThemeMode.light);
  }

  @override
  void setDarkTheme(WTWTheme? wtTheme) {
    darkTheme = wtTheme;
    addTheme(wtTheme);
  }
  @override
  WTWTheme? getDarkTheme() { return darkTheme; }
  @override
  void useDarkTheme() {
    theme = darkTheme!;
    ThemeData themeData = darkTheme!.getThemeData()!;
    Get.changeTheme(themeData);
    Get.changeThemeMode(ThemeMode.dark);
  }

}