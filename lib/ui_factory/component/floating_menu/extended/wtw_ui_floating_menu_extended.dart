import 'package:flutter/material.dart';
import '../wtw_ui_floating_menu.dart';

class WTWUIFloatingMenuExtended extends WTWUIFloatingMenu {

  void setSizes() {
    if(width! > 1000) {
      iconSize  = 27;
      labelSize = 20;
    }
    if(width! <= 1000) {
      iconSize  = 25;
      labelSize = 18;
    }
  }
  
  Widget? createIconWidget() {
    if(icon == null) { return SizedBox.shrink(); }

    return Icon(
      icon,
      size: iconSize,
      color: iconColor,
    );
  }

  Widget? createTextWidget() {
    if(label == null) { return SizedBox.shrink(); }

    return Text(
      label!,
      textAlign: TextAlign.left,
      style: TextStyle(
        color: labelColor, 
        fontSize: labelSize,
      ),
    );
  }

  @override
  Widget? build() {
    setSizes();

    return FloatingActionButton.extended(
      heroTag: getUniqueKey(),
      focusColor: backgroundColor,
      backgroundColor: backgroundColor,
      extendedPadding: padding,
      onPressed: action!,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0)
      ),
      icon: createIconWidget()!,
      label: createTextWidget()!,
    );
  }

}