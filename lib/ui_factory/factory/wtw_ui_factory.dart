import 'wtw_ui_factory_config.dart';
import '../type/impl/wtw_ui_component_type.dart';
import '../component/scaffold/wtw_ui_scaffold.dart';
import '../component/header/wtw_ui_header.dart';
import '../component/sidebar/wtw_ui_sidebar.dart';
import '../component/body/wtw_ui_body.dart';
import '../component/footer/wtw_ui_footer.dart';
import '../component/layout/wtw_ui_layout.dart';
import '../component/empty/wtw_ui_empty.dart';
import '../component/space/wtw_ui_space.dart';
import '../component/divider/wtw_ui_divider.dart';
import '../component/form_builder/form/wtw_ui_form.dart';
import '../component/form_builder/input_field/wtw_ui_form_input_filed.dart';
import '../component/button/wtw_ui_button.dart';
import '../component/floating_menu/wtw_ui_floating_menu.dart';

abstract class WTWUIFactory with WTWUIFactoryConfig {

  WTWUIScaffold? createScaffold(WTWUIScaffoldType type);

  WTWUIHeader? createHeader(WTWUIHeaderType type);

  WTWUISidebar? createSidebar(WTWUISidebarType type);

  WTWUIBody? createBody(WTWUIBodyType type);

  WTWUIFooter? createFooter(WTWUIFooterType type);

  WTWUILayout? createLayout(WTWUILayoutType type);

  WTWUIEmpty? createEmpty(WTWUIEmptyType type);

  WTWUIDivider? createDivider(WTWUIDividerType type);

  WTWUISpace? createSpace(WTWUISpaceType type);

  WTWUIForm? createForm(WTWUIFormType type);

  WTWUIFormInputField? createFormInputFiled(WTWUIFormInputFieldType type);

  WTWUIButton? createButton(WTWUIButtonType type);

  WTWUIFloatingMenu? createFloatingMenu(WTWUIFloatingMenuType type);

}