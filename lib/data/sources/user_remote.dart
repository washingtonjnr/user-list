import 'package:dio/dio.dart';

import '../models/user_model.dart';

class UserRemoteDataSource {
  final Dio dio;

  UserRemoteDataSource(this.dio);

  Future<List<UserModel>> getUsers() async {
    final response = await dio.get('https://api.example.com/users');

    return (response.data as List)
        .map((userJson) => UserModel.fromJson(userJson))
        .toList();
  }

  Future<UserModel> getUserDetails(String userId) async {
    final response = await dio.get('https://api.example.com/users/$userId');
    return UserModel.fromJson(response.data);
  }
}
