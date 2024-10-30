// Sources
import 'package:users/data/sources/user_remote_data_source.dart';
// Entities
import 'package:users/domain/entities/user_entity.dart';
// Repositories
import 'package:users/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource remoteDataSource;

  UserRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<UserEntity>> getUsers() async {
    final userModels = await remoteDataSource.fetchUsers();
    
    return userModels.map((model) => UserEntity(
      id: model.id,
      name: model.name,
      email: model.email,
      avatarUrl: model.avatarUrl
    )).toList();
  }
}