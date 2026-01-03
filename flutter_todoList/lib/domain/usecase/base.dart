
abstract interface class Usecase<T, Params>{
  Future<T> excute(Params params);
}