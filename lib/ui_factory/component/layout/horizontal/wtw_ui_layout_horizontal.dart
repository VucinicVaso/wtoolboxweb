import 'package:flutter/material.dart';
import '../wtw_ui_layout.dart';

class WTWUILayoutHorizontal extends WTWUILayout {

  @override
  Widget? build() {
    return LayoutBuilder(
      key: getUniqueKey(),
      builder: (context, constraints) {
        width  = constraints.maxWidth;
        height = constraints.maxHeight;

        return Container(
          width: width,
          color: backgroundColor,
          padding: padding,
          margin: margin,
          child: components!.isEmpty
            ? SizedBox.shrink()
            : Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: mainAxisAlignment!,
                crossAxisAlignment: crossAxisAlignment!,
                children: <Widget>[
                  ...components!.map((c) {
                    c..setWidth(width)..setHeight(height);
                    return c.build()!;
                  }),
                ],
              ),
        );
      }
    );
  }

}