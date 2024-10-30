// Entities
import 'package:users/domain/entities/user_entity.dart';
// Repositories
import 'package:users/domain/repositories/user_repository.dart';


class GetUsers {
  final UserRepository repository;

  GetUsers(this.repository);

  Future<List<UserEntity>> call() async {
    return await repository.getUsers();
  }
}