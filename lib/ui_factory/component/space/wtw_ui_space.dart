import '../wtw_ui_component.dart';

abstract class WTWUISpace extends WTWUIComponent {

  double? horizontal, vertical;
  void setHorizontalSpace(double? v) { horizontal = v; }
  void setVerticalSpace(double? v) { vertical = v; }

}

