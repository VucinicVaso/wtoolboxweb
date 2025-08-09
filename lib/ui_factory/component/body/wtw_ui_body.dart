import '../wtw_ui_component.dart';

abstract class WTWUIBody extends WTWUIComponent {

  List<WTWUIComponent>? components = List<WTWUIComponent>.empty(growable: true);
  void addComponent(WTWUIComponent? v) { components!.add(v!); }
  void addComponents(List<WTWUIComponent>? v) { components!.addAll(v!); }

}