import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wtoolboxweb/ui_factory/component/floating_menu/wtw_ui_floating_menu.dart';
import 'package:wtoolboxweb/ui_factory/component/floating_menu/extended/wtw_ui_floating_menu_extended.dart';

void main() {

  testWidgets(
    'WTWUIFloatingMenuExtended component test', 
    (tester) async {
      double width          = 1000.0;
      Color backgroundColor = Colors.white;
      double? paddingAll    = 10.0;
      IconData icon         = Icons.add;
      double iconSize       = 25.0;
      Color iconColor       = Colors.blue;
      String label          = 'Menu';
      double labelSize      = 18.0;
      Color labelColor      = Colors.blue;
      bool actionTriggered  = false;

      WTWUIFloatingMenu component = WTWUIFloatingMenuExtended()
        ..setWidth(width)
        ..setBackgroundColor(backgroundColor)
        ..setPadding(left: paddingAll, top: paddingAll, right: paddingAll, bottom: paddingAll)
        ..setIcon(icon)
        ..setIconColor(iconColor)
        ..setLabel(label)
        ..setLabelColor(labelColor)
        ..setAction(() { actionTriggered = true; });

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            floatingActionButton: component.build()!,
          ),
        ),
      );

      final componentFinder = find.byType(FloatingActionButton);
      expect(componentFinder, findsOneWidget);

      //Assert - rendered FloatingActionButton has padding, backgroundColor
      final floatingActionButtonWidget = tester.widget<FloatingActionButton>(componentFinder); 
      expect(floatingActionButtonWidget.backgroundColor, backgroundColor);
      expect(floatingActionButtonWidget.extendedPadding, EdgeInsets.fromLTRB(paddingAll, paddingAll, paddingAll, paddingAll));

      //Assert - rendered Icon has correct iconData, color and size
      final iconWidget = tester.widget<Icon>(find.byType(Icon)); 
      expect(iconWidget.icon, icon);
      expect(iconWidget.color, iconColor);
      expect(iconWidget.size, iconSize);

      //Assert - rendered Text has correct label, color and size
      final textWidget = tester.widget<Text>(find.byType(Text)); 
      expect(textWidget.data, label);
      expect(textWidget.style?.color, labelColor);
      expect(textWidget.style?.fontSize, labelSize);

      //Tap button and allow delay to complete
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pump(const Duration(milliseconds: 250));
      expect(actionTriggered, true);
    }
  );

}