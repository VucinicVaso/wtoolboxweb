import 'wtw_theme_extension.dart';

abstract class WTWTheme {

  String? name;
  void setName(String? v);
  String? getName();

  WTWThemeExtension? themeExtension;
  void setTheme();  
  WTWThemeExtension? getTheme();

}