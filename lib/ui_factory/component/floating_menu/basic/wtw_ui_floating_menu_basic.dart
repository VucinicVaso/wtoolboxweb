import 'package:flutter/material.dart';
import '../wtw_ui_floating_menu.dart';

class WTWUIFloatingMenuBasic extends WTWUIFloatingMenu {

  void setSizes() {
    iconSize  = width! > 1000 ? 27 : 25;
  }
  
  @override
  Widget? build() {
    setSizes(); 

    return FloatingActionButton(
      heroTag: getUniqueKey(),
      mini: mini!,
      backgroundColor: backgroundColor,
      onPressed: action!,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0)
      ),
      child: Icon(
        icon,
        size: iconSize,
        color: iconColor,
      ),
    );
  }

}