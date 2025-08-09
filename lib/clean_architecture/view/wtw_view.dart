import 'package:flutter/material.dart';
import '../../external/lib_getx.dart';
import '../../ui_factory/factory/wtw_ui_factory.dart';

//ignore: must_be_immutable
abstract class WTWView<T> extends StatelessWidget {

  WTWView({ super.key }) {
    setUIFactory();
  }

  T? controller;
  void setController(T? wtController) { controller = wtController; }

  WTWUIFactory? uiFactory;
  void setUIFactory() { uiFactory = Get.find<WTWUIFactory>(); }

}