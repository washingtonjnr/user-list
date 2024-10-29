import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Data
import 'package:users/data/sources/user_remote.dart';
// Domain
import 'package:users/domain/usecases/get_user.dart';
// Presentation
import 'package:users/presentation/pages/home.dart';

// Repositoories impl
import 'data/repositories/user_repository_impl.dart';

void main() {
  final dio = Dio();

  Get.put<UserRemoteDataSource>(UserRemoteDataSource(dio));
  Get.put<UserRepositoryImpl>(UserRepositoryImpl(Get.find()));
  Get.put<GetUsers>(GetUsers(Get.find()));
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const GetMaterialApp(
      home: Home(),
    );
  }
}
