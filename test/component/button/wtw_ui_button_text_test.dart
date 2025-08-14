import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wtoolboxweb/ui_factory/component/button/wtw_ui_button.dart';
import 'package:wtoolboxweb/ui_factory/component/button/text/wtw_ui_button_text.dart';

void main() {

  testWidgets(
    'WTWUIButtonText component test', 
    (tester) async {
      double width          = 1000;
      Color backgroundColor = Colors.blue;
      Color borderColor     = Colors.blue;
      bool? actionTriggered = false;
      String label          = 'Press Me';
      double paddingAll     = 10.0;
      double marginAll      = 10.0;
      Color labelColor      = Colors.white;
      double labelSize      = 18.0;

      WTWUIButton component = WTWUIButtonText()
        ..setWidth(width)
        ..setBackgroundColor(backgroundColor)
        ..setBorderColor(borderColor)
        ..setPadding(left: paddingAll, top: paddingAll, right: paddingAll, bottom: paddingAll)
        ..setMargin(left: marginAll, top: marginAll, right: marginAll, bottom: marginAll)
        ..setLabel(label)
        ..setLabelColor(labelColor)
        ..setAction(() { actionTriggered = true; });

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: component.build()!,
          ),
        ),
      );
    
      //Assert - rendered Container has correct padding, margin, backgroundColor, borderColor
      final containerWidget = tester.widget<Container>(find.byType(Container));
      expect(containerWidget.margin, EdgeInsets.fromLTRB(paddingAll, paddingAll, paddingAll, paddingAll));
      expect(containerWidget.padding, EdgeInsets.fromLTRB(marginAll, marginAll, marginAll, marginAll));
      BoxDecoration containerWidgetBoxDecoration = containerWidget.decoration as BoxDecoration;
      expect(containerWidgetBoxDecoration.color, backgroundColor);
      expect(containerWidgetBoxDecoration.border?.top.color, borderColor);

      //Assert - rendered Text has correct color and size
      final textWidget = tester.widget<Text>(find.byType(Text)); 
      expect(textWidget.data, label);
      expect(textWidget.style?.color, labelColor);
      expect(textWidget.style?.fontSize, labelSize);

      //Tap button and allow delay to complete
      await tester.tap(find.byType(GestureDetector));
      await tester.pump(const Duration(milliseconds: 250));
      expect(actionTriggered, true);
    }
  );

}