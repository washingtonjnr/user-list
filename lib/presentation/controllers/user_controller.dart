import 'package:get/get.dart';
// Entities
import 'package:users/domain/entities/user_entity.dart';
// Use cases
import 'package:users/domain/usecases/get_user.dart';

class UserController extends GetxController {
  final GetUsers getUsers;
  // 
  var users = <UserEntity>[].obs;
  var isLoading = true.obs;

  UserController(this.getUsers);

  @override
  void onInit() {
    fetchUsers();
    super.onInit();
  }

  void fetchUsers() async {
    isLoading(true);
    
    try {
      users.value = await getUsers();
    } finally {
      isLoading(false);
    }
  }
}