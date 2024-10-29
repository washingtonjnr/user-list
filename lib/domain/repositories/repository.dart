mixin Repository {
  Future<List<T>> fetchList<T>() => throw UnimplementedError('fetch() has not been implemented.');
  
  Future<T> fetchById<T>(String id) => throw UnimplementedError('fetchById() has not been implemented.');
  
  Future<T> create<T>(T object) => throw UnimplementedError('create() has not been implemented.');
  
  Future<T> update<T>(String id, T object) => throw UnimplementedError('update() has not been implemented.');
  
  Future<void> delete<T>(String id) => throw UnimplementedError('delete() has not been implemented.');
}
