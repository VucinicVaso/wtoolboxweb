import 'package:flutter/material.dart';
import '../wtw_ui_floating_menu.dart';

class WTWUIFloatingMenuExdended extends WTWUIFloatingMenu {

  void setSizes() {
    iconSize  = width! > 1000 ? 27 : 25; 
    labelSize = width! > 1000 ? 20 : 18;
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

    label = label!.length > 10 ? '${label!.substring(0, 10)}...' : label!;

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