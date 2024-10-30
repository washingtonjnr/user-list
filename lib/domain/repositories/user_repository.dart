
// Entities
import 'package:users/domain/entities/user_entity.dart';
// Repository
// import 'package:users/domain/repositories/repository.dart';

abstract class UserRepository {
  Future<List<UserEntity>> getUsers();
}