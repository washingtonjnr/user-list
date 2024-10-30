import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:users/core/network/dio_client.dart';
// Repositories
import 'package:users/data/repositories/user_repository_impl.dart';
// Sources
import 'package:users/data/sources/user_remote_data_source.dart';
// Usecases
import 'package:users/domain/usecases/get_user.dart';
// Layout
import 'package:users/presentation/layouts/main_layout.dart';
// Pages
import 'package:users/presentation/pages/details.dart';
// Components
import 'package:users/presentation/widgets/card.dart';
import 'package:users/presentation/widgets/loading.dart';
// Controller
import '../controllers/user_controller.dart';
// Colors
import 'package:users/presentation/styles/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final UserController controller = Get.put(UserController(GetUsers(UserRepositoryImpl(UserRemoteDataSource(DioClient())))));
    
    return MainLayout(
      child: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: Loading());
        }

        return RefreshIndicator(
          color: AppColors.primary,
          onRefresh: () async {
            controller.fetchUsers();
          },
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Pacientes',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800]
                    ),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.users.length,
                  itemBuilder: (context, index) {
                    final user = controller.users[index];

                    return CardBox(
                      child: ListTile(
                        leading: CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl)),
                        title: Text(
                          user.name, 
                          style: const TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        subtitle: Text(user.email),
                        onTap: () {
                          Get.to(
                            () => UserDetailPage(user: user), 
                            transition: Transition.rightToLeft,
                            duration: const Duration(milliseconds: 300),
                          );
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        );

      }),
    );
  }
}
