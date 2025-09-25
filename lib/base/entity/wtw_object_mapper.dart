abstract class WTWObjectMapper<E, M> {

  E toEntity(M model);

  M toModel(E entity);

}