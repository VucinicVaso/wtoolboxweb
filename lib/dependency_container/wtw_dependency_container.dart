abstract class WTWDependencyContainer {

  // create instances for services, repositories, database
  Future<void> register({ String? dotenvFile });

  // remove instances for services, repositories, database
  Future<void> unregister();

}