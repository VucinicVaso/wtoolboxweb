abstract class WTWUseCaseWithParams<Type, Params> {

  Future<Type> call(Params params);

}
