import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wtoolboxweb/ui_factory/component/space/wtw_ui_space.dart';
import 'package:wtoolboxweb/ui_factory/component/space/basic/wtw_ui_space_basic.dart';

void main() {

  testWidgets(
    'WTWUISpaceBasic component test', 
    (tester) async {
      double horizontal = 20.0;
      double vertical   = 40.0;

      WTWUISpace component = WTWUISpaceBasic()
        ..setHorizontalSpace(horizontal)
        ..setVerticalSpace(vertical);

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: component.build()!,
          ),
        ),
      );

      final componentFinder = find.byType(SizedBox);
      expect(componentFinder, findsOneWidget);

      final componentWidget = tester.widget<SizedBox>(componentFinder);
      expect(componentWidget.width, horizontal);
      expect(componentWidget.height, vertical);
    }
  );

}