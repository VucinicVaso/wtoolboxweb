import '../external/lib_getx.dart';
import '../message_broker/wtw_message_broker.dart';
import '../message_broker/wtw_message_broker_service.dart';
import '../router/wtw_routes.dart';
import '../router/wtw_router.dart';
import '../translation/wtw_translations.dart';
import '../translation/wtw_translation.dart';

abstract class WTWApplicationStarter {

  /// application title
  String? _title = '';
  void setTitle(String? v) { _title = v; }
  String? getTitle() { return _title; }

  /// application settings (dotenv)
  Map<String, dynamic>? _settings = <String, dynamic>{};
  void setSettings(Map<String, dynamic>? v) { _settings = v; }
  Map<String, dynamic>? getSettings() { return _settings; }

  // register/unregister application translations
  WTWTranslations? _translations;
  void registerTranslations(WTWTranslations? translations) {
    _translations = translations;
    Get.find<WTWTranslation>().setKeys(_translations!.keys);
  }
  void unregisterTranslations() {}

  // subscribe/unsubscribe application message broker
  WTWMessageBroker? _broker;
  void subscribeMessageBroker(WTWMessageBroker? broker) {
    _broker = broker;
    Get.find<WTWMessageBrokerService>().subscribe(_broker);
  }
  void unsubscribeMessageBroker() {
    Get.find<WTWMessageBrokerService>().unsubscribe(_broker!.getTitle());
  }

  // register/unregister application routes
  WTWRoutes? _routes;
  void registerRoutes(WTWRoutes? routes) {
    _routes = routes;
    Get.find<WTWRouter>().registerRoutes(_routes!.getRoutes());
  }
  void unregisterRoutes() {
    Get.find<WTWRouter>().unregisterRoutes(_routes!.getRoutes());
  }

  // register/unregister classes
  Future<void> register();
  Future<void> unregister();

}