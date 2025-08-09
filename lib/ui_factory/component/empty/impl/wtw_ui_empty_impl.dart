import 'package:flutter/material.dart';
import '../wtw_ui_empty.dart';

class WTWUIEmptyImpl extends WTWUIEmpty {

  @override
  Widget? build() {
    return SizedBox.shrink(key: getUniqueKey());
  }

}