import 'package:flutter/material.dart';
import '../../../external/lib_material_symbols.dart';
import '../wtw_ui_factory.dart';
import '../../type/impl/wtw_ui_component_type.dart';
import '../../component/empty/wtw_ui_empty.dart';
import '../../component/empty/impl/wtw_ui_empty_impl.dart';
import '../../component/divider/wtw_ui_divider.dart';
import '../../component/divider/horizontal/wtw_ui_divider_horizontal.dart';
import '../../component/layout/wtw_ui_layout.dart';
import '../../component/layout/horizontal/wtw_ui_layout_horizontal.dart';
import '../../component/layout/horizontal/wtw_ui_layout_horizontal_scrollable.dart';
import '../../component/layout/vertical/wtw_ui_layout_vertical.dart';
import '../../component/layout/vertical/wtw_ui_layout_vertical_scrollable.dart';
import '../../component/layout/vertical/wtw_ui_layout_vertical_expanded.dart';
import '../../component/layout/vertical/wtw_ui_layout_vertical_expanded_and_scrollable.dart';
import '../../component/scaffold/wtw_ui_scaffold.dart';
import '../../component/scaffold/impl/wtw_ui_scaffold_impl.dart';
import '../../component/header/wtw_ui_header.dart';
import '../../component/header/impl/wtw_ui_header_impl.dart';
import '../../component/sidebar/wtw_ui_sidebar.dart';
import '../../component/sidebar/basic/wtw_ui_sidebar_basic.dart';
import '../../component/body/wtw_ui_body.dart';
import '../../component/body/basic/wtw_ui_body_basic.dart';
import '../../component/footer/wtw_ui_footer.dart';
import '../../component/footer/fixed/wtw_ui_footer_fixed.dart';
import '../../component/space/wtw_ui_space.dart';
import '../../component/space/basic/wtw_ui_space_basic.dart';
import '../../component/form_builder/form/wtw_ui_form.dart';
import '../../component/form_builder/form/impl/wtw_ui_form_impl.dart';
import '../../component/form_builder/input_field/wtw_ui_form_input_filed.dart';
import '../../component/form_builder/input_field/text/wtw_ui_form_input_field_text.dart';
import '../../component/form_builder/input_field/protected/wtw_ui_form_input_field_protected.dart';
import '../../component/button/wtw_ui_button.dart';
import '../../component/button/text/wtw_ui_button_text.dart';
import '../../component/button/underline_text/wtw_ui_button_underline_text.dart';
import '../../component/floating_menu/wtw_ui_floating_menu.dart';
import '../../component/floating_menu/basic/wtw_ui_floating_menu_basic.dart';
import '../../component/floating_menu/extended/wtw_ui_floating_menu_extended.dart';

class WTWUIFactoryImpl extends WTWUIFactory {

  @override
  WTWUIScaffold? createScaffold(WTWUIScaffoldType type) {
    switch(type) {
      case WTWUIScaffoldType.basic1:
        var component = WTWUIScaffoldImpl()
          ..setGlobalKey()
          ..setBackgroundColor(theme!.background1);
        return component;
      case WTWUIScaffoldType.basic2:
        var component = WTWUIScaffoldImpl()
          ..setGlobalKey()
          ..setBackgroundColor(theme!.background2);
        return component;
    }
  }

  @override
  WTWUIHeader? createHeader(WTWUIHeaderType type) {
    switch(type) {
      case WTWUIHeaderType.basic1:
        var component = WTWUIHeaderImpl()
          ..setBuildContext(getCurrentContext())
          ..withShadow(false)
          ..setBackgroundColor(theme!.background1)
          ..setSidebarIcon(Symbols.menu)
          ..setSidebarIconColor(theme!.text1)
          ..setBackActionIconColor(theme!.text1)
          ..setBackActionLabelColor(theme!.text1)
          ..setBackActionSvgBackgroundColor(theme!.background2)
          ..setLabelColor(theme!.text1)
          ..setActionIconColor(theme!.text1)
          ..setActionIconBackgroundColor(theme!.background1)
          ..setActionLabelColor(theme!.text1)
          ..setMenuIcon(Symbols.more_vert_rounded)
          ..setMenuIconColor(theme!.text1)
          ..setMenuBackgroundColor(theme!.background2)
          ..setMenuItemIconColor(theme!.text1)
          ..setMenuItemLabelColor(theme!.text1);
        return component;
      case WTWUIHeaderType.basic1WithShadow:
        var component = WTWUIHeaderImpl()
          ..setBuildContext(getCurrentContext())
          ..withShadow(true)
          ..setBackgroundColor(theme!.background1)
          ..setSidebarIcon(Symbols.menu)
          ..setSidebarIconColor(theme!.text1)
          ..setBackActionIconColor(theme!.text1)
          ..setBackActionLabelColor(theme!.text1)
          ..setBackActionSvgBackgroundColor(theme!.background2)
          ..setLabelColor(theme!.text1)
          ..setActionIconColor(theme!.text1)
          ..setActionIconBackgroundColor(theme!.background1)
          ..setActionLabelColor(theme!.text1)
          ..setMenuIcon(Symbols.more_vert_rounded)
          ..setMenuIconColor(theme!.text1)
          ..setMenuBackgroundColor(theme!.background2)
          ..setMenuItemIconColor(theme!.text1)
          ..setMenuItemLabelColor(theme!.text1);
        return component;
      case WTWUIHeaderType.basic2:
        var component = WTWUIHeaderImpl()
          ..withShadow(false)
          ..setBackgroundColor(theme!.background2)
          ..setSidebarIcon(Symbols.menu)
          ..setSidebarIconColor(theme!.text1)
          ..setBackActionIconColor(theme!.text1)
          ..setBackActionLabelColor(theme!.text1)
          ..setBackActionSvgBackgroundColor(theme!.background1)
          ..setLabelColor(theme!.text1)
          ..setActionIconColor(theme!.text1)
          ..setActionIconBackgroundColor(theme!.background1)
          ..setActionLabelColor(theme!.text1)
          ..setMenuIcon(Symbols.more_vert_rounded)
          ..setMenuIconColor(theme!.text1)
          ..setMenuBackgroundColor(theme!.background1)
          ..setMenuItemIconColor(theme!.text1)
          ..setMenuItemLabelColor(theme!.text1);
        return component;
      case WTWUIHeaderType.basic2WithShadow:
        var component = WTWUIHeaderImpl()
          ..withShadow(true)
          ..setBackgroundColor(theme!.background2)
          ..setSidebarIcon(Symbols.menu)
          ..setSidebarIconColor(theme!.text1)
          ..setBackActionIconColor(theme!.text1)
          ..setBackActionLabelColor(theme!.text1)
          ..setBackActionSvgBackgroundColor(theme!.background1)
          ..setLabelColor(theme!.text1)
          ..setActionIconColor(theme!.text1)
          ..setActionIconBackgroundColor(theme!.background1)
          ..setActionLabelColor(theme!.text1)
          ..setMenuIcon(Symbols.more_vert_rounded)
          ..setMenuIconColor(theme!.text1)
          ..setMenuBackgroundColor(theme!.background1)
          ..setMenuItemIconColor(theme!.text1)
          ..setMenuItemLabelColor(theme!.text1);
        return component;
    }
  }

  @override
  WTWUISidebar? createSidebar(WTWUISidebarType type) {
    switch(type) {
      case WTWUISidebarType.basic1:
        var component = WTWUISidebarBasic()
          ..setBackgroundColor(theme!.background1)
          ..setBorderColor(theme!.background2)
          ..setIconColor(theme!.text1)
          ..setLabelColor(theme!.text1);
        return component;
      case WTWUISidebarType.basic2:
        var component = WTWUISidebarBasic()
          ..setBackgroundColor(theme!.background2)
          ..setBorderColor(theme!.background1)
          ..setIconColor(theme!.text1)
          ..setLabelColor(theme!.text1);
        return component;     
    }
  }

  @override
  WTWUIBody? createBody(WTWUIBodyType type) {
    switch(type) {
      case WTWUIBodyType.basic1:
        var component = WTWUIBodyBasic()
          ..setBuildContext(getCurrentContext())
          ..setBackgroundColor(theme!.background1);
        return component;
      case WTWUIBodyType.basic2:
        var component = WTWUIBodyBasic()
          ..setBuildContext(getCurrentContext())
          ..setBackgroundColor(theme!.background2);
        return component;
    }
  }

  @override
  WTWUIFooter? createFooter(WTWUIFooterType type) {
    switch(type) {
      case WTWUIFooterType.basic1Fixed:
        var component = WTWUIFooterFixed()
          ..setBuildContext(getCurrentContext())
          ..setBackgroundColor(theme!.background1)
          ..setSelectedItemBackgroundColor(theme!.primary4)
          ..setSelectedItemIconColor(theme!.primary1)
          ..setSelectedItemLabelColor(theme!.text1)
          ..setUnselectedItemBackgroundColor(theme!.background1)
          ..setUnselectedItemIconColor(theme!.text4)
          ..setUnselectedItemLabelColor(theme!.text4);
        return component;
      case WTWUIFooterType.basic2Fixed:
        var component = WTWUIFooterFixed()
          ..setBuildContext(getCurrentContext())
          ..setBackgroundColor(theme!.background2)
          ..setSelectedItemBackgroundColor(theme!.primary4)
          ..setSelectedItemIconColor(theme!.primary1)
          ..setSelectedItemLabelColor(theme!.text1)
          ..setUnselectedItemBackgroundColor(theme!.background2)
          ..setUnselectedItemIconColor(theme!.text4)
          ..setUnselectedItemLabelColor(theme!.text4);
        return component;
    }
  }

  @override
  WTWUILayout? createLayout(WTWUILayoutType type) {
    switch(type) {
      case WTWUILayoutType.horizontal:
        var component = WTWUILayoutHorizontal()
          ..setBuildContext(getCurrentContext())
          ..setAlignment(null)
          ..setPadding(left: 7.5, top: 12.5, right: 7.5, bottom: 12.5)
          ..setMargin(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0)
          ..setBackgroundColor(Colors.transparent)
          ..setMainAxisAlignment(MainAxisAlignment.center)
          ..setCrossAxisAlignment(CrossAxisAlignment.center);
        return component;
      case WTWUILayoutType.horizontalScrollable:
        var component = WTWUILayoutHorizontalScrollable()
          ..setBuildContext(getCurrentContext())
          ..setAlignment(null)
          ..setPadding(left: 7.5, top: 12.5, right: 7.5, bottom: 12.5)
          ..setMargin(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0)
          ..setBackgroundColor(Colors.transparent)
          ..setMainAxisAlignment(MainAxisAlignment.center)
          ..setCrossAxisAlignment(CrossAxisAlignment.center);
        return component;
      case WTWUILayoutType.vertical:
        var component = WTWUILayoutVertical()
          ..setBuildContext(getCurrentContext())
          ..setAlignment(null)
          ..setPadding(left: 7.5, top: 12.5, right: 7.5, bottom: 12.5)
          ..setMargin(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0)
          ..setBackgroundColor(Colors.transparent)
          ..setMainAxisAlignment(MainAxisAlignment.start)
          ..setCrossAxisAlignment(CrossAxisAlignment.center);
        return component;
      case WTWUILayoutType.verticalScrollable:
        var component = WTWUILayoutVerticalScrollable()
          ..setBuildContext(getCurrentContext())
          ..setAlignment(null)
          ..setPadding(left: 7.5, top: 12.5, right: 7.5, bottom: 12.5)
          ..setMargin(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0)
          ..setBackgroundColor(Colors.transparent)
          ..setMainAxisAlignment(MainAxisAlignment.start)
          ..setCrossAxisAlignment(CrossAxisAlignment.center);
        return component;
      case WTWUILayoutType.verticalExpanded:
        var component = WTWUILayoutVerticalExpanded()
          ..setBuildContext(getCurrentContext())
          ..setAlignment(null)
          ..setPadding(left: 7.5, top: 12.5, right: 7.5, bottom: 12.5)
          ..setMargin(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0)
          ..setBackgroundColor(Colors.transparent)
          ..setMainAxisAlignment(MainAxisAlignment.start)
          ..setCrossAxisAlignment(CrossAxisAlignment.center);
        return component;
      case WTWUILayoutType.verticalExpandedAndScrollable:
        var component = WTWUILayoutVerticalExpandedAndScrollable()
          ..setBuildContext(getCurrentContext())
          ..setAlignment(null)
          ..setPadding(left: 7.5, top: 12.5, right: 7.5, bottom: 12.5)
          ..setMargin(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0)
          ..setBackgroundColor(Colors.transparent)
          ..setMainAxisAlignment(MainAxisAlignment.start)
          ..setCrossAxisAlignment(CrossAxisAlignment.center);
        return component;
    }
  }

  @override
  WTWUIEmpty? createEmpty(WTWUIEmptyType type) {
    switch(type) {
      case WTWUIEmptyType.empty:
        var component = WTWUIEmptyImpl();
        return component;
    }
  }

  @override
  WTWUIDivider? createDivider(WTWUIDividerType type) {
    switch(type) {
      case WTWUIDividerType.horizontal:
        var component = WTWUIDividerHorizontal()
          ..setBuildContext(getCurrentContext())
          ..setBackgroundColor(theme!.shade5)
          ..setThickness(1.0);
        return component;
    }
  }

  @override
  WTWUISpace? createSpace(WTWUISpaceType type) {
    switch(type) {
      case WTWUISpaceType.horizontal5:
        var component = WTWUISpaceBasic()
          ..setBuildContext(getCurrentContext())
          ..setHorizontalSpace(0.0)
          ..setVerticalSpace(5.0);
        return component;
      case WTWUISpaceType.horizontal10:
        var component = WTWUISpaceBasic()
          ..setBuildContext(getCurrentContext())
          ..setHorizontalSpace(0.0)
          ..setVerticalSpace(10.0);
        return component;
      case WTWUISpaceType.horizontal15:
        var component = WTWUISpaceBasic()
          ..setBuildContext(getCurrentContext())
          ..setHorizontalSpace(0.0)
          ..setVerticalSpace(15.0);
        return component;
      case WTWUISpaceType.vertical5:
        var component = WTWUISpaceBasic()
          ..setBuildContext(getCurrentContext())
          ..setHorizontalSpace(5.0)
          ..setVerticalSpace(0.0);
        return component;
      case WTWUISpaceType.vertical10:
        var component = WTWUISpaceBasic()
          ..setBuildContext(getCurrentContext())
          ..setHorizontalSpace(10.0)
          ..setVerticalSpace(0.0);
        return component;
      case WTWUISpaceType.vertical15:
        var component = WTWUISpaceBasic()
          ..setBuildContext(getCurrentContext())
          ..setHorizontalSpace(15.0)
          ..setVerticalSpace(0.0);
        return component;
    }
  }

  @override
  WTWUIForm? createForm(WTWUIFormType type) {
    switch(type) {
      case WTWUIFormType.basic:
        var component = WTWUIFormImpl()
          ..setBuildContext(getCurrentContext())
          ..setScrollController()
          ..setBackgroundColor(Colors.transparent)
          ..setMainAxisAlignment(MainAxisAlignment.start)
          ..setCrossAxisAlignment(CrossAxisAlignment.start)
          ..setPadding(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0)
          ..setMargin(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0);
        return component;
    }
  }

  @override
  WTWUIFormInputField? createFormInputFiled(WTWUIFormInputFieldType type) {
    switch(type) {
      case WTWUIFormInputFieldType.text:
        var component = WTWUIFormInputFieldText()
          ..setFocusNode()
          ..setMargin(left: 20.0, top: 0.0, right: 20.0, bottom: 20.0)
          ..setBackgroundColor(theme!.background1)
          ..setInputBoder(theme!.background2, 1)
          ..setInputFocusBorder(theme!.primary1, 1)
          ..setInputErrorFocusBorder(theme!.error1, 1)
          ..setTextInputType(TextInputType.text)
          ..setTextAlign(TextAlign.left)
          ..setRequiredColor(theme!.error1)
          ..setInputTextColor(theme!.text1)
          ..setErrorTextColor(theme!.error1)
          ..setPrefixColor(theme!.primary1)
          ..setLabelColor(theme!.text3)
          ..setSuffixColor(theme!.text1)
          ..setInputBoder(theme!.text1, 1.0)
          ..setInputFocusBorder(theme!.primary1, 1.0)
          ..setInputErrorFocusBorder(theme!.error1, 1.0);
        return component;
      case WTWUIFormInputFieldType.protected:
        var component = WTWUIFormInputFieldProtected()
          ..setFocusNode()
          ..setMargin(left: 20.0, top: 0.0, right: 20.0, bottom: 20.0)
          ..setBackgroundColor(theme!.background1)
          ..setInputBoder(theme!.background2, 1)
          ..setInputFocusBorder(theme!.primary1, 1)
          ..setInputErrorFocusBorder(theme!.error1, 1)
          ..setTextInputType(TextInputType.text)
          ..setTextAlign(TextAlign.left)
          ..setRequiredColor(theme!.error1)
          ..setInputTextColor(theme!.text1)
          ..setErrorTextColor(theme!.error1)
          ..setPrefixColor(theme!.primary1)
          ..setLabelColor(theme!.text3)
          ..setSuffixColor(theme!.text1)
          ..setInputBoder(theme!.text1, 1.0)
          ..setInputFocusBorder(theme!.primary1, 1.0)
          ..setInputErrorFocusBorder(theme!.error1, 1.0);
        return component;
    }
  }

  @override
  WTWUIButton? createButton(WTWUIButtonType type) {
    switch(type) {
      case WTWUIButtonType.text1: 
        var component = WTWUIButtonText()
          ..setPadding(left: 5.0, top: 5.0, right: 5.0, bottom: 5.0)
          ..setMargin(left: 5.0, top: 5.0, right: 5.0, bottom: 5.0)
          ..setBackgroundColor(theme!.primary1)
          ..setBorderColor(theme!.primary1)
          ..setLabelColor(theme!.primary5);
        return component;
      case WTWUIButtonType.text2: 
        var component = WTWUIButtonText()
          ..setPadding(left: 5.0, top: 5.0, right: 5.0, bottom: 5.0)
          ..setMargin(left: 5.0, top: 5.0, right: 5.0, bottom: 5.0)
          ..setBackgroundColor(theme!.primary5)
          ..setBorderColor(theme!.primary1)
          ..setLabelColor(theme!.primary1);
        return component;
      case WTWUIButtonType.underlineText1:
        var component = WTWUIButtonUnderlineText()
          ..setPadding(left: 5.0, top: 5.0, right: 5.0, bottom: 5.0)
          ..setMargin(left: 5.0, top: 5.0, right: 5.0, bottom: 5.0)
          ..setBackgroundColor(Colors.transparent)
          ..setBorderColor(theme!.primary1)
          ..setLabelColor(theme!.primary1);
        return component;
    }
  }

  @override
  WTWUIFloatingMenu? createFloatingMenu(WTWUIFloatingMenuType type) {
    switch(type) {
      case WTWUIFloatingMenuType.basic1:
        var component = WTWUIFloatingMenuBasic()
          ..setBackgroundColor(theme!.primary1)
          ..setIconColor(theme!.primary5);
        return component;
      case WTWUIFloatingMenuType.extended1:
        var component = WTWUIFloatingMenuExdended()
          ..setBackgroundColor(theme!.primary5)
          ..setIconColor(theme!.primary1)
          ..setLabelColor(theme!.primary1);
        return component;
    }
  }

}
