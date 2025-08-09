import 'package:flutter/material.dart';
import '../wtw_ui_component.dart';
import '../header/wtw_ui_header.dart';
import '../sidebar/wtw_ui_sidebar.dart';
import '../body/wtw_ui_body.dart';
import '../footer/wtw_ui_footer.dart';
import '../floating_menu/wtw_ui_floating_menu.dart';

abstract class WTWUIScaffold extends WTWUIComponent {

  GlobalKey<ScaffoldState>? globalKey;
  void setGlobalKey() { globalKey = GlobalKey<ScaffoldState>(); }

  WTWUIHeader? header;
  void setHeader(WTWUIHeader? v) { header = v; }

  WTWUISidebar? sidebar;
  void setSidebar(WTWUISidebar? v) { sidebar = v; }

  WTWUIBody? body;
  void setBody(WTWUIBody? v) { body = v; }

  WTWUIFloatingMenu? floatingMenu;
  void setFloatingMenu(WTWUIFloatingMenu? v) { floatingMenu = v; }

  WTWUIFooter? footer;
  void setFooter(WTWUIFooter? v) { footer = v; }

}