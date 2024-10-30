import 'package:users/core/network/dio_client.dart';
// Mocks
import 'package:users/data/mocks/users_mock.dart';
// Models
import 'package:users/data/models/user_model.dart';

class UserRemoteDataSource {
  final DioClient client; 

  UserRemoteDataSource(this.client);

  Future<List<UserModel>> fetchUsers() async {
    try {
      final response = await client.get('/?results=10');

      if (response.statusCode == 200) {
        final data = response.data;

        return (data['results'] as List)
            .map((user) {
              return UserModel.fromJson(user);
            })
            .toList();
      } else {
        return mockUsers();
      }
    } catch (e) {
      return mockUsers();
    }
  }
}