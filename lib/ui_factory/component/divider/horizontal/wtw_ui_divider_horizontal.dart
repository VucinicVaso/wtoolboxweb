import 'package:flutter/material.dart';
import '../wtw_ui_divider.dart';

class WTWUIDividerHorizontal extends WTWUIDivider {

  @override
  Widget? build() {
    return Container(
      key: getUniqueKey(),
      width: width,
      height: thickness,
      margin: margin,
      color: backgroundColor,
    );
  }

}