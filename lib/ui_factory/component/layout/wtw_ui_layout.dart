import '../wtw_ui_component.dart';

abstract class WTWUILayout extends WTWUIComponent {

  // size of a layout
  bool? small, medium, large = false;
  void sm() { small = true; }
  void md() { medium = true; }
  void lg() { large = true; }

  // 0 padding and margin
  void flat() {
    setPadding(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0);
    setMargin(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0);
  }

  List<WTWUIComponent>? components = List<WTWUIComponent>.empty(growable: true);
  void addComponent(WTWUIComponent? v) { components!.add(v!); }
  void addComponents(List<WTWUIComponent>? v) { components!.addAll(v!); }

}