import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wtoolboxweb/ui_factory/component/divider/wtw_ui_divider.dart';
import 'package:wtoolboxweb/ui_factory/component/divider/horizontal/wtw_ui_divider_horizontal.dart';

void main() {

  testWidgets(
    'WTWUIDividerHorizontal component test', 
    (tester) async {
      double width     = 100.0;
      double thickness = 5.0;

      WTWUIDivider component = WTWUIDividerHorizontal()
        ..setThickness(thickness)
        ..setWidth(width);

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: component.build()!,
          ),
        ),
      );

      final componentFinder = find.byType(Container);
      expect(componentFinder, findsOneWidget);

      final componentWidget = tester.renderObject<RenderBox>(componentFinder);
      expect(componentWidget.size.width, width);
      expect(componentWidget.size.height, thickness);
    }
  );

}