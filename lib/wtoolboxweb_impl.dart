import 'external/lib_getx.dart';
import 'wtoolboxweb.dart';
import 'dependency_container/wtw_dependency_container.dart';
import 'dependency_container/impl/wtw_dependency_container_impl.dart';
import 'application_starter/wtw_application_starter.dart';
import 'application_starter/wtw_application_starter_service.dart';
import 'router/wtw_router.dart';

class WToolboxWebImpl extends WToolboxWeb {

  WTWDependencyContainer? dependecyContainer;

  @override
  Future<void> open({ String? envFile }) async {
    dependecyContainer = WTWDependencyContainerImpl();
    await dependecyContainer!.register(dotenvFile: envFile);
  }

  @override
  Future<void> close() async {
    await dependecyContainer!.unregister();
  }

  @override
  Future<void> registerApplicationStarters({ WTWApplicationStarter? initialStarter, List<WTWApplicationStarter>? starters }) async {
    var applicationStarterService = Get.find<WTWApplicationStarterService>();

    await applicationStarterService.registerInitialApplicationStarter(initialStarter);

    if(starters!.isNotEmpty) {
      for(WTWApplicationStarter s in starters) {
        applicationStarterService.addApplicationStarter(s);
      }
    }
  }

  @override
  void registerRoutes({ String? initialRoute, String? redirectRoute, String? logoutRoute }) {
    var router = Get.find<WTWRouter>();

    router
      ..setInitialRoute(initialRoute)
      ..setRedirectRoute(redirectRoute)
      ..setLogoutRoute(logoutRoute);
    }

}

WToolboxWeb wtoolboxweb = WToolboxWebImpl();