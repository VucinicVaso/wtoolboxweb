import 'wtw_application_starter.dart';

abstract class WTWApplicationStarterService {

  WTWApplicationStarter? initialStarter;
  Future<void> registerInitialApplicationStarter(WTWApplicationStarter? starter);
  Future<void> unregisterInitialApplicationStarter();

  List<WTWApplicationStarter>? starters = List.empty(growable: true);
  void addApplicationStarter(WTWApplicationStarter? starter);

  Future<void> registerApplicationStarter(WTWApplicationStarter? starter);
  Future<void> unregisterApplicationStarter(String? title);
  Future<void> registerApplicationStarters();
  Future<void> unregisterApplicationStarters();

}