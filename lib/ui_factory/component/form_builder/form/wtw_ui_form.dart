import 'package:flutter/material.dart';
import '../../wtw_ui_component.dart';
import 'wtw_ui_form_input_field_builder.dart';
import '../input_field/wtw_ui_form_input_filed.dart';

abstract class WTWUIForm extends WTWUIComponent {

  Key? formKey;
  void setFormKey(Key? v) { formKey = v; }

  ScrollController? scrollController;
  void setScrollController() { scrollController = ScrollController(); }

  AutovalidateMode? validationMode;
  void setValidationMode(AutovalidateMode? v) { validationMode = v; }
  void validationAlways() { validationMode = AutovalidateMode.always; }
  void validationModeDisabled() { validationMode = AutovalidateMode.disabled; }
  void validationOnUserInteraction() { validationMode = AutovalidateMode.onUserInteraction; }

  Map<String, WTWUIFormInputFieldBuilder>? fields = <String, WTWUIFormInputFieldBuilder>{};
  void addField({ String? key, int? order, WTWUIFormInputField? inputField, WTWUIComponent? component }) {
    WTWUIFormInputFieldBuilder field = WTWUIFormInputFieldBuilder()
      ..setKey(key)
      ..setOrder(order)
      ..showField();
    if(inputField != null) { field.setInputField(inputField); }
    if(component != null) { field.setComponent(component); }
    fields![key!] = field;
  }
  void removeField(String key) { fields!.remove(key); }
  WTWUIFormInputFieldBuilder? getField(String key) { return fields![key]; }

}