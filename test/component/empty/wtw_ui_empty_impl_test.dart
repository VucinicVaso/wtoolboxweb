import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wtoolboxweb/ui_factory/component/empty/wtw_ui_empty.dart';
import 'package:wtoolboxweb/ui_factory/component/empty/impl/wtw_ui_empty_impl.dart';

void main() {

  testWidgets(
    'WTWUIEmptyImpl component test', 
    (tester) async {
      double width  = 0.0;
      double height = 0.0;

      WTWUIEmpty component = WTWUIEmptyImpl();

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: component.build()!,
          ),
        ),
      );

      // SizedBox exists
      final componentFinder = find.byType(SizedBox);
      expect(componentFinder, findsOneWidget);

      // SizedBox has width and height
      final componentWidget = tester.renderObject<RenderBox>(componentFinder);
      expect(componentWidget.size.width, width);
      expect(componentWidget.size.height, height);
    }
  );

}