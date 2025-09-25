abstract class WTWUseCaseWithParams<T, P> {

  Future<T> call(P params);

}
