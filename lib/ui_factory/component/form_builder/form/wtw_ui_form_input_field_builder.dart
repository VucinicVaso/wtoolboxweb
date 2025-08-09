import 'package:flutter/material.dart';
import '../../wtw_ui_component.dart';
import '../input_field/wtw_ui_form_input_filed.dart';

class WTWUIFormInputFieldBuilder {

  String? key;
  void setKey(String? v) { key = v; }

  int? order;
  void setOrder(int? v) { order = v; }

  bool? show = true;
  void showField() { show = true; }
  void hideField() { show = false; }

  FocusNode? focusNode;
  void setFocusNode() { focusNode = FocusNode(); }

  WTWUIComponent? component;
  void setComponent(WTWUIComponent? v) { component = v; }

  WTWUIFormInputField? inputField;
  void setInputField(WTWUIFormInputField? v) { inputField = v; }

  Widget? build() {
    if(component != null) { return component!.build(); }
    if(inputField != null) { return inputField!.build(); }
    return const SizedBox.shrink();
  }

}