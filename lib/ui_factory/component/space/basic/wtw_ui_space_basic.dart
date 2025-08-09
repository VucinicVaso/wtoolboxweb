import 'package:flutter/material.dart';
import '../wtw_ui_space.dart';

class WTWUISpaceBasic extends WTWUISpace {

  @override
  Widget? build() {
    return SizedBox(
      width: horizontal,
      height: vertical
    );
  }

}