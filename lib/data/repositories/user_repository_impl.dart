import 'package:users/data/models/user_model.dart';
import 'package:users/data/sources/user_remote.dart';
import 'package:users/domain/entities/user.dart';
import 'package:users/domain/repositories/user_repository.dart';


class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource remoteDataSource;

  UserRepositoryImpl(this.remoteDataSource);

  Future<User> fetchUserDetails(String userId) async {
    return await remoteDataSource.getUserDetails(userId);
  }
  
  @override
  Future<List<T>> fetchList<T>() async {
    if (T == UserModel) {
      final users = await remoteDataSource.getUsers();
      return users as List<T>;
    }
    
    throw Exception('Unsupported type: $T');
  }
  
  @override
  Future<T> create<T>(T object) {
    throw UnimplementedError();
  }
  
  @override
  Future<void> delete<T>(String id) {
    throw UnimplementedError();
  }
  
  @override
  Future<T> fetchById<T>(String id) {
    throw UnimplementedError();
  }
  
  @override
  Future<T> update<T>(String id, T object) {
    throw UnimplementedError();
  }
}
