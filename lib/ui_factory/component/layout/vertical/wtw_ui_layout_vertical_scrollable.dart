import 'package:flutter/material.dart';
import '../wtw_ui_layout.dart';

class WTWUILayoutVerticalScrollable extends WTWUILayout {

  @override
  Widget? build() {
    return LayoutBuilder(
      key: getUniqueKey(),
      builder: (context, constraints) {
        width  = constraints.maxWidth;
        height = constraints.maxHeight;
    
        return Container(
          key: getUniqueKey(),
          color: backgroundColor,
          padding: padding,
          margin: margin,
          width: width,
          alignment: alignment,
          child: components!.isEmpty 
            ? SizedBox.shrink()
            : SingleChildScrollView(
              child: Column(
                mainAxisAlignment: mainAxisAlignment!,
                crossAxisAlignment: crossAxisAlignment!,
                children: <Widget>[
                  ...components!.map((c) {
                    c..setWidth(width)..setHeight(height);
                    return c.build()!;
                  }),
                ],
              ),
            ),
        );
      }
    );
  }

}