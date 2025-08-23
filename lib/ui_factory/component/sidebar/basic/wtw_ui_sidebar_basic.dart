import 'package:flutter/material.dart';
import '../wtw_ui_sidebar.dart';
import '../wtw_ui_sidebar_dropdown.dart';

class WTWUISidebarBasic extends WTWUISidebar {

  void setSizes() {
    width = width! * 0.3;

    if(width! > 1000) {
      iconSize  = 27;
      labelSize = 18;        
    }
    if(width! <= 1000) {
      iconSize  = 25;
      labelSize = 18; 
    }
  }

  Widget? createBasicActionWidget(Map<String, dynamic>? map, Widget? emptyWidget) {
    return GestureDetector(
      onTap: map!['action']! != null ? map['action'] : () {},
      child: Container(
        width: width,
        padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
        margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
        color: Colors.transparent,
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            /// icon
            map['icon'] == null
              ? emptyWidget!
              : Icon(
                  map['icon'],
                  color: iconColor,
                  size: iconSize,
                ),

            /// space between
            map['icon'] == null || map['label'] == null ? emptyWidget! : SizedBox(width: 10.0, height: 0.0),

            /// label
            map['label'] == null
              ? emptyWidget!
              : Text(
                  map['label'],
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: labelColor,
                    fontSize: labelSize,
                  ),
                ),
            ],
          ),
        ),
      );
  }

  Widget? createMenuActionWidget(Map<String, dynamic>? map, Widget? emptyWidget) {
    map!['items'].map((m) {
      m['labelSize']  = labelSize! * 0.75;
      m['labelColor'] = labelColor;
      m['iconSize']   = iconSize! * 0.75;
      m['iconColor']  = iconColor;
    });

   return WTWUISidebarDropdown(
      key:        getUniqueKey(),
      width:      width,
      label:      map!['label'],
      labelSize:  labelSize,
      labelColor: labelColor,
      icon:       map['icon'],
      iconSize:   iconSize,
      iconColor:  iconColor,
      items:      map['items'],
    );
  }

  Widget? actionsList() {
    Widget? emptyWidget = SizedBox.shrink();
    if(actions!.isEmpty) { return emptyWidget; }

    List<Widget>? actionWidgets = List<Widget>.empty(growable: true);
    for(var a in actions!) {
      if(a['type'] == WTWUISidebarActionType.basic.name) { actionWidgets.add(createBasicActionWidget(a, emptyWidget)!); }
      if(a['type'] == WTWUISidebarActionType.menu.name) { actionWidgets.add(createMenuActionWidget(a, emptyWidget)!); }
    }

    return Container(
      padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
      width: width,
      alignment: Alignment.topLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ...actionWidgets,
        ],
      ),
    );
  }

  @override
  Widget? build() {
    setSizes();

    return Drawer(
      key: getUniqueKey(),
      backgroundColor: backgroundColor,
      shadowColor: borderColor,
      width: width,
      child: actionsList(),
    );
  }

}