import 'application_starter/wtw_application_starter.dart';

abstract class WToolboxWeb {

  Future<void> open({ String? envFile });

  Future<void> close();

  Future<void> registerApplicationStarters({ WTWApplicationStarter? initialStarter, List<WTWApplicationStarter>? starters });

  void registerRoutes({ String? initialRoute, String? redirectRoute, String? logoutRoute });

}