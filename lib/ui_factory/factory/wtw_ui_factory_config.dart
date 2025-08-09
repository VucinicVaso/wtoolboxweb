import 'package:flutter/material.dart';
import '../../external/lib_getx.dart';
import '../../theme/wtw_theme_extension.dart';

mixin WTWUIFactoryConfig {

  String? translate(String? v) { return '$v'.tr; }

  BuildContext? getCurrentContext() { return Get.key.currentContext; }

  void closeModal() { Get.back(); }

  String? fonts;
  void setTextFont({ String? type, String? font }) {
    if(type == 'Google') { fonts = font; }
  }

  WTWThemeExtension? theme;
  void setTheme(WTWThemeExtension? v) { theme = v; }

}
