import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Pages
import 'package:users/presentation/pages/details.dart';
import 'package:users/presentation/pages/home.dart';
// Models
import 'data/models/user_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'User List',
      initialRoute: '/',
      // Routes
      getPages: [
        GetPage(name: '/', page: () => const Home()),
        GetPage(
          name: '/user/:id',
          page: () {
            final userId = Get.parameters['id'];
            final user = UserModel(id: userId!, name: 'User $userId', email: 'user$userId@example.com', avatarUrl: 'https://picsum.photos/200');
            
            return UserDetailPage(user: user);
          },
        ),
      ],
    );
  }
}
