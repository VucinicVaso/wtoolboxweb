import 'package:flutter_test/flutter_test.dart';
import 'component/empty/wtw_ui_empty_impl_test.dart' as component_empty_impl_test;
import 'component/space/wtw_ui_space_basic_test.dart' as component_space_basic_test;
import 'component/divider/wtw_ui_divider_horizontal_test.dart' as component_divider_horizontal_test;
import 'component/button/wtw_ui_button_text_test.dart' as component_button_ui_button_text_test;
import 'component/button/wtw_ui_button_underline_text_test.dart' as component_button_ui_button_underline_text_test;
import 'component/floating_menu/wtw_ui_floating_menu_basic_test.dart' as component_floating_menu_basic_test;
import 'component/floating_menu/wtw_ui_floating_menu_extended_test.dart' as component_floating_menu_extended_test;

void main() {
  
  // test(
  //   'WTOOLBOXWEB main test', 
  //   () {}
  // );

  component_empty_impl_test.main();
  component_space_basic_test.main();
  component_divider_horizontal_test.main();
  component_button_ui_button_text_test.main();
  component_button_ui_button_underline_text_test.main();
  component_floating_menu_basic_test.main();
  component_floating_menu_extended_test.main();

}