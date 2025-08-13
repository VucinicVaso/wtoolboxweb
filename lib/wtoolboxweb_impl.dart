import 'wtoolboxweb.dart';
import 'dependency_container/wtw_dependency_container.dart';
import 'dependency_container/impl/wtw_dependency_container_impl.dart';

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

}

WToolboxWeb wtoolboxweb = WToolboxWebImpl();