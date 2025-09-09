import 'dart:convert';
import 'package:flutter/material.dart';
import '../../../../../external/lib_material_symbols.dart';
import '../wtw_ui_form_input_filed.dart';

class WTWUIFormInputFieldDropdown extends WTWUIFormInputField {

  @override
  Widget? build() {
    return FieldWidget(
      key: getUniqueKey(),
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      backgroundColor: backgroundColor,
      alignment: alignment,
      focusNode: focusNode,
      secondaryFocusNode: secondaryFocusNode,
      validator: validator,
      controller: controller,
      dropdownItems: dropdownItems,
      enabled: enabled,
      isRequired: isRequired,
      isRequiredColor: isRequiredColor,
      prefix: prefix,
      prefixSize: prefixSize,
      prefixColor: prefixColor,
      prefixAction: prefixAction,
      suffix: suffix,
      suffixSize: suffixSize,
      suffixColor: suffixColor,
      suffixAction: suffixAction,
      label: label,
      labelSize: labelSize,
      labelColor: labelColor,
      inputText: inputText,
      inputTextColor: inputTextColor,
      inputTextSize: inputTextSize,
      hintLabel: hintLabel,
      hintLabelColor: hintLabelColor,
      hintLabelSize: hintLabelSize,
      errorTextSize: errorTextSize,
      errorTextColor: errorTextColor,
      textAlign: textAlign,
      textInputType: textInputType,
      validationMode: validationMode,
      textCapitalization: textCapitalization,
      inputBorderColor: inputBorderColor,
      inputFocusBorderColor: inputFocusBorderColor,
      inputErrorBorderColor: inputErrorBorderColor,
      inputBorderWidth: inputBorderWidth,
      inputFocusBorderWidth: inputFocusBorderWidth,
      inputErrorBorderWidth: inputErrorBorderWidth,
    );
  }

}

// ignore: must_be_immutable
class FieldWidget extends StatefulWidget {

  FieldWidget({
    super.key,
    this.padding,
    this.margin,
    this.width,
    this.height,
    this.backgroundColor,
    this.alignment,
    this.focusNode,
    this.secondaryFocusNode,
    this.validator,
    this.controller,
    this.dropdownItems,
    this.enabled,
    this.isRequired,
    this.isRequiredColor,
    this.prefix,
    this.prefixSize,
    this.prefixColor,
    this.prefixAction,
    this.suffix,
    this.suffixSize,
    this.suffixColor,
    this.suffixAction,
    this.label,
    this.labelSize,
    this.labelColor,
    this.inputText,
    this.inputTextColor,
    this.inputTextSize,
    this.hintLabel,
    this.hintLabelColor,
    this.hintLabelSize,
    this.errorTextSize,
    this.errorTextColor,
    this.textAlign,
    this.textInputType,
    this.validationMode,
    this.textCapitalization,
    this.inputBorderColor,
    this.inputFocusBorderColor,
    this.inputErrorBorderColor,
    this.inputBorderWidth,
    this.inputFocusBorderWidth,
    this.inputErrorBorderWidth,
  });

  Alignment? alignment;
  EdgeInsets? padding, margin;
  Color? backgroundColor, isRequiredColor, prefixColor, suffixColor, inputTextColor, labelColor, hintLabelColor, errorTextColor,
    inputBorderColor, inputFocusBorderColor, inputErrorBorderColor;
  double? width, height, prefixSize, suffixSize, 
    inputTextSize, labelSize, hintLabelSize, errorTextSize, inputBorderWidth, inputFocusBorderWidth, inputErrorBorderWidth;
  bool? enabled, isRequired;
  IconData? prefix, suffix;
  String? inputText, label, hintLabel;
  TextAlign? textAlign;
  TextInputType? textInputType;
  AutovalidateMode? validationMode;
  TextCapitalization? textCapitalization;
  FocusNode? focusNode, secondaryFocusNode;
  Function? validator, prefixAction, suffixAction;
  TextEditingController? controller;
  List<Map<String, dynamic>>? dropdownItems;

  @override
  State<FieldWidget> createState() => _FieldState();

}

class _FieldState extends State<FieldWidget> {

  @override
  void initState() {
    setSizes();
    if(widget.dropdownItems!.isNotEmpty) { setItems(widget.dropdownItems); }
    super.initState();
  }

  @override
  void dispose() {
    // if(widget.focusNode != null) { widget.focusNode!.dispose(); }
    super.dispose();
  }

  void setSizes() {
    double? labelSize, hintLabelSize, inputTextSize, prefixSize, suffixSize = 0.0;
    if(widget.width! > 1000) {
      labelSize     = 20;
      hintLabelSize = 18;
      inputTextSize = 18;
      prefixSize    = 27;
      suffixSize    = 27;
    }
    if(widget.width! < 1000) {
      labelSize     = 18;
      inputTextSize = 16;
      hintLabelSize = 16;
      prefixSize    = 25;
      suffixSize    = 25;
    }

    setState(() {
      widget.labelSize     = labelSize;
      widget.hintLabelSize = hintLabelSize;
      widget.inputTextSize = inputTextSize;
      widget.prefixSize    = prefixSize;
      widget.suffixSize    = suffixSize;
    });
  }

  Map<String, dynamic>? item = <String, dynamic>{};
  void setItem(Map<String, dynamic>? map) {
    setState(() {
      item = map;
      widget.controller!.text = jsonEncode(map);
    });

    if(widget.secondaryFocusNode != null) {
      FocusScope.of(context).requestFocus(widget.secondaryFocusNode);
    }
  }

  List<Map<String, dynamic>>? items = List<Map<String, dynamic>>.empty(growable: true);
  void setItems(List<Map<String, dynamic>>? list) {
    Map<String, dynamic>? first = list!.firstWhere((e) => e['selected'] == true);
    String? encoded             = jsonEncode(first);

    setState(() {
      items = list;
      item = first;
      widget.controller!.text = encoded;
    });
  }

  Widget? createLabelWidget() {
    if(widget.label == null) { return SizedBox.shrink(); }

    if(widget.isRequired == true) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          /// label
          Container(
            alignment: widget.alignment,
            color: widget.backgroundColor,
            margin: const EdgeInsets.fromLTRB(0.0, 7.5, 7.5, 0.0),
            child: Text(
              widget.label!,
              style: TextStyle(
                color: widget.labelColor,
                fontSize: widget.labelSize,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          /// required icon
          Icon(
            Symbols.stat_0,
            color: widget.isRequiredColor,
            size: widget.labelSize,
          ),
        ],
      );
    }

    return Container(
      alignment: widget.alignment,
      color: widget.backgroundColor,
      margin: const EdgeInsets.fromLTRB(0.0, 7.5, 0.0, 0.0),
      child: Text(
        widget.label!,
        style: TextStyle(
          color: widget.labelColor,
          fontSize: widget.labelSize,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }

  Widget? createHintLabelWidget() {
    if(widget.hintLabel == null) { return SizedBox.shrink(); }

    return Container(
      alignment: widget.alignment,
      color: widget.backgroundColor,
      margin: const EdgeInsets.fromLTRB(0.0, 7.5, 0.0, 0.0),
      child: Text(
        widget.hintLabel!,
        style: TextStyle(
          color: widget.labelColor,
          fontSize: widget.hintLabelSize,
          fontWeight: FontWeight.normal,
        ),
        textAlign: widget.textAlign,
      ),
    );
  }

  Widget? createPrefixWidget() {
    if(widget.prefix == null) { return SizedBox.shrink(); }

    return Container(
      width: widget.prefixSize,
      height: widget.prefixSize,
      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
      margin: const EdgeInsets.fromLTRB(0.0, 0.0, 7.5, 0.0),
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: widget.prefixAction != null ? widget.prefixAction!() : () {},
        child: Icon(
          widget.prefix,
          color: widget.prefixColor,
          size: widget.prefixSize,
        ),
      ),
    );
  }

  Widget? createSuffixWidget() {
    //if(widget.suffix == null) { return SizedBox.shrink(); }

    return Container(
      width: widget.suffixSize,
      height: widget.suffixSize,
      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
      margin: const EdgeInsets.fromLTRB(7.5, 0.0, 0.0, 0.0),
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: widget.suffixAction != null ? widget.suffixAction!() : () {},
        child: Icon(
          Icons.arrow_drop_down_rounded, //widget.suffix,
          color: widget.suffixColor,
          size: widget.suffixSize,
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: widget.key,
      width: widget.width,
      padding: widget.padding,
      margin: widget.margin,
      alignment: Alignment.centerLeft,
      color: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          /// label
          createLabelWidget()!,

          /// prefix, dropdown, suffix
          Container(
            width: widget.width,
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            color: Colors.transparent,
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                /// prefix
                createPrefixWidget()!,

                /// dropdown
                Flexible(
                  child: DropdownButton<Map<String, dynamic>>(
                    key: UniqueKey(),
                    focusNode: widget.focusNode,
                    isExpanded: true,
                    dropdownColor: widget.backgroundColor,
                    icon: createSuffixWidget()!,
                    onChanged: (Map<String, dynamic>? m) => setItem(m),
                    items: items!.map<DropdownMenuItem<Map<String, dynamic>>>((Map<String, dynamic>? i) =>
                      DropdownMenuItem<Map<String, dynamic>>(
                        value: i,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.fromLTRB(7.5, 7.5, 7.5, 7.5),
                          margin: const EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 7.5),
                          color: Colors.transparent,
                          child: Row(
                            children: <Widget>[

                              i!['image'] != ''
                                ? Container(
                                    alignment: Alignment.center,
                                    width: 40.0,
                                    height: 40.0,
                                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                                    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                                    child: Image.asset(i['image'])
                                  )
                                : SizedBox.shrink(),

                              i['label'] != '' 
                                ? Text(
                                    i['label'],
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: widget.inputTextColor,
                                      fontSize: widget.inputTextSize,
                                    ),
                                  )
                                : SizedBox.shrink(),

                              ],
                            ),
                        ),
                      )
                    ).toList(),
                    value: item,
                  ),
                ),
              ],
            ),
          ),

          /// hintLabel
          createHintLabelWidget()!,
        ],
      ),
    );
  }

}