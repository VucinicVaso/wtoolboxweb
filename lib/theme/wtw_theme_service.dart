import 'wtw_theme.dart';

enum WTWThemeEnums {
  light,
  dark
}

abstract class WTWThemeService {

  WTWTheme? lightTheme;
  void setLightTheme(WTWTheme? wtTheme);
  WTWTheme? getLightTheme();
  void useLightTheme();

  WTWTheme? darkTheme;
  void setDarkTheme(WTWTheme? wtTheme);
  WTWTheme? getDarkTheme();
  void useDarkTheme();

  List<Map<String, dynamic>> themes = List<Map<String, dynamic>>.empty(growable: true);
  void addTheme(WTWTheme? theme) { themes.add({ 'key': themes.length + 1, 'name': theme!.name, 'data': theme }); }
  List<Map<String, dynamic>>? getThemes() { return themes; }

  WTWTheme? theme;
  WTWTheme? getTheme() { return theme!; }
  void updateTheme(String? name) {
    if(name == WTWThemeEnums.light.name) { useLightTheme(); }
    if(name == WTWThemeEnums.dark.name) { useDarkTheme(); }
  }

}