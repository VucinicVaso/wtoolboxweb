import 'package:flutter/material.dart';
import '../wtw_ui_component.dart';

abstract class WTWUIWrap extends WTWUIComponent {
  
  Axis? direction;
  void setHorizontalDirection() { direction = Axis.horizontal; }
  void setVerticalDirection() { direction = Axis.vertical; }

  List<WTWUIComponent>? components = List<WTWUIComponent>.empty(growable: true);
  void addComponent(WTWUIComponent? v) { components!.add(v!); }
  void addComponents(List<WTWUIComponent>? v) { components!.addAll(v!); }

}