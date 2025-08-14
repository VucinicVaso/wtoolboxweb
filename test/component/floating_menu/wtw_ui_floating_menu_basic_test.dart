import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wtoolboxweb/ui_factory/component/floating_menu/wtw_ui_floating_menu.dart';
import 'package:wtoolboxweb/ui_factory/component/floating_menu/basic/wtw_ui_floating_menu_basic.dart';

void main() {

  testWidgets(
    'WTWUIFloatingMenuBasic component test', 
    (tester) async {
      double width          = 1000.0;
      Color backgroundColor = Colors.white;
      IconData icon         = Icons.add;
      double iconSize       = 25.0;
      Color iconColor       = Colors.blue;
      bool actionTriggered  = false;

      WTWUIFloatingMenu component = WTWUIFloatingMenuBasic()
        ..setWidth(width)
        ..setBackgroundColor(backgroundColor)
        ..setIcon(icon)
        ..setIconColor(iconColor)
        ..setAction(() { actionTriggered = true; });

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            floatingActionButton: component.build()!,
          ),
        ),
      );

      // FloatingActionButton exists
      final componentFinder = find.byType(FloatingActionButton);
      expect(componentFinder, findsOneWidget);

      // FloatingActionButton has backgroundColor
      final floatingActionButtonWidget = tester.widget<FloatingActionButton>(componentFinder); 
      expect(floatingActionButtonWidget.backgroundColor, backgroundColor);;

      // Icon has correct iconData, color and size
      final iconWidget = tester.widget<Icon>(find.byType(Icon)); 
      expect(iconWidget.icon, icon);
      expect(iconWidget.color, iconColor);
      expect(iconWidget.size, iconSize);

      // Tap button and allow delay to complete
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pump(const Duration(milliseconds: 250));
      expect(actionTriggered, true);
    }
  );

}