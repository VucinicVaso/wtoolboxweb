import 'package:flutter_test/flutter_test.dart';
import 'component/empty/wtw_ui_empty_impl_test.dart' as component_empty_impl_test;
import 'component/space/wtw_ui_space_basic_test.dart' as component_space_basic_test;
import 'component/divider/wtw_ui_divider_horizontal_test.dart' as component_divider_horizontal_test;
import 'component/button/wtw_ui_button_text_test.dart' as component_button_text_test;
import 'component/button/wtw_ui_button_underline_text_test.dart' as component_button_underline_text_test;
import 'component/floating_menu/wtw_ui_floating_menu_basic_test.dart' as component_floating_menu_basic_test;
import 'component/floating_menu/wtw_ui_floating_menu_extended_test.dart' as component_floating_menu_extended_test;
import 'service/encryption/wtw_encryption_test.dart' as service_encryption_test;
import 'service/http/wtw_http_adapter_test.dart' as http_adapter_test;


void main() {
  
  // test('WTOOLBOXWEB main test', () {});

  // components tests
  component_empty_impl_test.main();
  component_space_basic_test.main();
  component_divider_horizontal_test.main();
  component_button_text_test.main();
  component_button_underline_text_test.main();
  component_floating_menu_basic_test.main();
  component_floating_menu_extended_test.main();

  // services tests
  service_encryption_test.main();
  http_adapter_test.main();

}