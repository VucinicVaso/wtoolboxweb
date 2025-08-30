import 'package:flutter/material.dart';
import '../wtw_ui_wrap.dart';

class WTWTUIWrapImpl extends WTWUIWrap {

  @override
  Widget? build() {
    return Container(
      width: width,
      padding: padding,
      margin: margin,
      child: Wrap(
        direction: direction!,
        children: <Widget>[
          ...components!.map((c) {
            c..setWidth(width)..setHeight(height);
            return c.build()!;
          }),
        ],
      ),
    );
  }

}