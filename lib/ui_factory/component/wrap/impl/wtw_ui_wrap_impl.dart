import 'package:flutter/material.dart';
import '../wtw_ui_wrap.dart';

class WTWUIWrapImpl extends WTWUIWrap {

  @override
  Widget? build() {
    return Container(
      width: width,
      padding: padding,
      margin: margin,
      alignment: Alignment.center,
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