import '../wtw_application_starter.dart';
import '../wtw_application_starter_service.dart';

class WTWApplicationStarterServiceImpl extends WTWApplicationStarterService {

  @override
  Future<void> registerInitialApplicationStarter(WTWApplicationStarter? starter) async {
    await starter!.register();
    initialStarter = starter;
  }
  @override
  Future<void> unregisterInitialApplicationStarter() async {
    await initialStarter!.unregister();
  }

  @override
  void addApplicationStarter(WTWApplicationStarter? starter) {
    starters!.add(starter!);
  }

  @override
  Future<void> registerApplicationStarter(WTWApplicationStarter? starter) async {
    await starter!.register();
    starters!.add(starter);
  }
  @override
  Future<void> unregisterApplicationStarter(String? title) async {
    WTWApplicationStarter? starter = starters!.firstWhere((p) => p.getTitle() == title);
    await starter.unregister();
  }

  @override
  Future<void> registerApplicationStarters() async {
    for(var s in starters!) {
      await s.register(); 
    }
  }
  @override
  Future<void> unregisterApplicationStarters() async {
    for(var s in starters!) { 
      await s.unregister(); 
    }
  }

}