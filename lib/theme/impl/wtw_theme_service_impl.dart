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
  void useLightTheme() {
    setTheme(wtType: WTWThemeEnums.light, wtTheme: lightTheme!);
  }

  @override
  void setDarkTheme(WTWTheme? wtTheme) {
    darkTheme = wtTheme;
    addTheme(wtTheme);
  }
  @override
  void useDarkTheme() {
    setTheme(wtType: WTWThemeEnums.dark, wtTheme: darkTheme!);
  }

  @override
  void setTheme({ WTWThemeEnums? wtType, WTWTheme? wtTheme }) {
    theme = wtTheme;

    if(wtType!.name == WTWThemeEnums.light.name) {
      ThemeData themeData = ThemeData
        .light()
        .copyWith(
          extensions: <ThemeExtension<dynamic>>[ theme!.getThemeExtension()! ]
        );
      Get.changeTheme(themeData);
      Get.changeThemeMode(ThemeMode.light);
    }

    if(wtType.name == WTWThemeEnums.dark.name) {
      ThemeData themeData = ThemeData
        .dark()
        .copyWith(
          extensions: <ThemeExtension<dynamic>>[ theme!.getThemeExtension()! ]
        );
      Get.changeTheme(themeData);
      Get.changeThemeMode(ThemeMode.dark);
    }
  }

}