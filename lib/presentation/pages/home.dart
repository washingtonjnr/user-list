import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Use cases
import 'package:users/domain/usecases/get_user.dart';
// Widgets
import 'package:users/presentation/widgets/avatar.dart';

// Controller
import '../controllers/user_controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final UserController userController = Get.put(UserController(GetUsers(Get.find())));
    
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de usuários')),
      body: Obx(() {
        if (userController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        return RefreshIndicator(
          onRefresh: userController.fetchUsers,
          child: ListView.builder(
            itemCount: userController.users.length,
            itemBuilder: (context, index) {
              final user = userController.users[index];
              return ListTile(
                leading: Avatar(name: user.name, avatarUrl: user.avatarUrl),
                title: Text(user.name),
                subtitle: Text(user.email),
                onTap: () {
                  print("A");
                },
              );
            },
          ),
        );
      }),
    );
  }
}
