import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:users/data/models/user_model.dart';
import 'package:users/domain/repositories/user_repository.dart';
import 'package:users/domain/usecases/get_user.dart';

class MockUserRepository extends Mock implements UserRepository {}

void main() {
  late GetUsers usecase;
  late MockUserRepository mockUserRepository;

  setUp(() {
    mockUserRepository = MockUserRepository();
    usecase = GetUsers(mockUserRepository);
  });

  final tUsers = [
    UserModel(id: "4d6s4d1sd32a1sda6s5d4a54as56", name: 'John Doe', email: 'john@example.com', avatarUrl: 'avatarUrl'),
  ];

  test('deve retornar uma lista de usuários', () async {
    when(mockUserRepository.getUsers()).thenAnswer((_) async => tUsers);
    
    final result = await usecase();

    expect(result, tUsers);
    verify(mockUserRepository.getUsers());
    verifyNoMoreInteractions(mockUserRepository);
  });
}
