import 'package:flutter_test/flutter_test.dart';
import 'component/empty/wtw_ui_empty_impl_test.dart' as empty_impl_component_test;
import 'component/space/wtw_ui_space_basic_test.dart' as space_basic_component_test;
import 'component/divider/wtw_ui_divider_horizontal_test.dart' as divider_horizontal_component_test;
import 'component/button/wtw_ui_button_text_test.dart' as button_ui_button_test_test;
import 'component/button/wtw_ui_button_underline_text_test.dart' as button_ui_button_underline_test_test;

void main() {
  
  // test(
  //   'WTOOLBOXWEB main test', 
  //   () {}
  // );

  empty_impl_component_test.main();
  space_basic_component_test.main();
  divider_horizontal_component_test.main();
  button_ui_button_test_test.main();
  button_ui_button_underline_test_test.main();

}