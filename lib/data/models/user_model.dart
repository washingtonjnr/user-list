
import 'package:users/domain/entities/user.dart';


class UserModel extends User {
  UserModel({
    required super.id,
    required super.name,
    required super.email,
    required String super.avatarUrl,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      avatarUrl: json['avatar'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'avatar': avatarUrl,
    };
  }
}