
import 'package:users/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.id,
    required super.name,
    required super.email,
    required super.avatarUrl,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
     return UserModel(
      email: json['email'], 
      id: json['login']['uuid'], 
      avatarUrl: json['picture']['large'],  
      name: '${json['name']['title']} ${json['name']['first']} ${json['name']['last']}',
    );
  }
}