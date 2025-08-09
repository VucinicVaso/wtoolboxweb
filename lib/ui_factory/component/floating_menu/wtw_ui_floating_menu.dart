import 'package:flutter/material.dart';
import '../wtw_ui_component.dart';

abstract class WTWUIFloatingMenu extends WTWUIComponent {

  bool? mini = false;
  void small() { mini = true; }

  VoidCallback? action;
  void setAction(VoidCallback? v) { action = v; }

  IconData? icon;
  Color? iconColor;
  double? iconSize;
  void setIcon(IconData? v) { icon = v; }
  void setIconColor(Color? v) { iconColor = v; }
  void setIconSize(double? v) { iconSize = v; }

  String? label;
  Color? labelColor;
  double? labelSize;
  void setLabel(String? v) { label = v; }
  void setLabelColor(Color? v) { labelColor = v; }
  void setLabelSize(double? v) { labelSize = v; }

}