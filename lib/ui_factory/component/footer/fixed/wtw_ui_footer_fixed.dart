import 'package:flutter/material.dart';
import '../wtw_ui_footer.dart';

class WTWUIFooterFixed extends WTWUIFooter {

  void setSizes() {
    itemPadding = itemPadding ?? const EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 6.0);
    itemMargin  = itemMargin ?? const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0);

    if(width! > 1000) {
      itemIconSize  = 27;
      itemLabelSize = 25;
    }
    if(width! <= 1000) {
      itemIconSize  = 25;
      itemLabelSize = 18;      
    }
  }

  BottomNavigationBarItem? createBarItem(Map<dynamic, dynamic>? e) {
    return BottomNavigationBarItem(
      icon: Container(
        padding: itemPadding,
        margin: itemMargin,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Colors.transparent,
        ),
        foregroundDecoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Icon(
          e!['icon'],
          size: itemIconSize,
          color: unselectedItemIconColor
        ),
      ),
      label: e['label'],
      activeIcon: Container(
        padding: itemPadding,
        margin: itemMargin,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: selectedItemBackgroundColor,
        ),
        child: Icon(
          e['icon'],
          size: itemIconSize,
          color: selectedItemIconColor
        ),
      ),
    );
  }

  @override
  Widget? build() {
    return BottomNavigationBar(
      key: getUniqueKey(),
      items: <BottomNavigationBarItem>[
        ...items!.map((i) => createBarItem(i)!),
      ],
      onTap: (int i) => selectedItemAction!(i),
      type: BottomNavigationBarType.fixed,
      backgroundColor: backgroundColor,
      currentIndex: selectedItem!,
      selectedItemColor: selectedItemLabelColor,
      unselectedItemColor: unselectedItemIconColor,
      selectedLabelStyle: TextStyle(
        color: selectedItemLabelColor,
        fontSize: itemLabelSize,
        fontWeight: FontWeight.bold
      ),
      unselectedLabelStyle: TextStyle(
        color: unselectedItemLabelColor,
        fontSize: itemLabelSize,
        fontWeight: FontWeight.normal
      ),
    );
  }

}