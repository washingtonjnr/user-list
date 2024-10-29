// Entities
import 'package:users/data/models/user_model.dart';
// Repositories
import 'package:users/domain/repositories/user_repository.dart';


class GetUsers {
  final UserRepository repository;

  GetUsers(this.repository);

  Future<List<UserModel>> call() async {
    return await repository.fetchList<UserModel>();
  }
}
