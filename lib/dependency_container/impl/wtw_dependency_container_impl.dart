import '../../external/lib_getx.dart';
import '../../external/lib_dotenv.dart';
import '../../encryption/wtw_encryption.dart';
import '../../encryption/impl/wtw_encryption_impl.dart';
import '../../message_broker/wtw_message_broker_service.dart';
import '../../message_broker/impl/wtw_message_broker_service_impl.dart';
import '../../application_starter/wtw_application_starter_service.dart';
import '../../application_starter/impl/wtw_application_starter_service_impl.dart';
import '../../router/wtw_router.dart';
import '../../router/impl/wtw_router_impl.dart';
import '../../translation/wtw_translation.dart';
import '../../translation/impl/wtw_translation_impl.dart';
import '../../http_adapter/wtw_http_adapter.dart';
import '../../http_adapter/impl/wtw_http_adapter_impl.dart';
import '../../theme/wtw_theme_service.dart';
import '../../theme/impl/wtw_theme_service_impl.dart';
import '../../ui_factory/factory/wtw_ui_factory.dart';
import '../../ui_factory/factory/impl/wtw_ui_factory_impl.dart';
import '../../file_manager/file/wtw_file.dart';
import '../../file_manager/file/impl/wtw_file_impl.dart';
import '../wtw_dependency_container.dart';

class WTWDependencyContainerImpl extends WTWDependencyContainer {

  @override
  Future<void> register({ String? dotenvFile }) async {
    await dotenv.load(fileName: dotenvFile!);

    Get.put<WTWTranslation>(WTWTranslationImpl());
    Get.put<WTWThemeService>(WTWThemeServiceImpl());
    Get.put<WTWApplicationStarterService>(WTWApplicationStarterServiceImpl());
    Get.put<WTWRouter>(WTWRouterImpl());
    Get.put<WTWMessageBrokerService>(WTWMessageBrokerServiceImpl());
    Get.put<WTWEncryption>(WTWEncryptionImpl(key: dotenv.get('ENCRYPTION_KEY')));
    Get.put<WTWHttpAdapter>(WTWHttpAdapterImpl());
    Get.put<WTWFile>(WTWFileImpl());

    WTWUIFactory? uiFactory = WTWUIFactoryImpl()
      ..setTheme(Get.find<WTWThemeService>().themeExtension!);
    Get.put<WTWUIFactory>(uiFactory);
  }

  @override
  Future<void> unregister() async {
    await Get.delete<WTWEncryption>(force: true);
    await Get.delete<WTWMessageBrokerService>(force: true);
    await Get.delete<WTWTranslation>(force: true);
    await Get.delete<WTWThemeService>(force: true);
    await Get.delete<WTWRouter>(force: true);
    await Get.delete<WTWApplicationStarterService>(force: true);
    await Get.delete<WTWUIFactory>(force: true);
    await Get.delete<WTWHttpAdapter>(force: true);
    await Get.delete<WTWFile>(force: true);  
    dotenv.clean();
  }

}