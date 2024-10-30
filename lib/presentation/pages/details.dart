import 'package:flutter/material.dart';
// Entities
import 'package:users/domain/entities/user_entity.dart';
// Layout
import 'package:users/presentation/layouts/main_layout.dart';
import 'package:users/presentation/styles/colors.dart';

class UserDetailPage extends StatelessWidget {
  final UserEntity user;

  const UserDetailPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Paciente',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(user.avatarUrl),
              ),
          
              const SizedBox(width: 16),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    user.name, 
                    style: const TextStyle(
                      fontSize: 16,
                      color: AppColors.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(user.email, style: const TextStyle(fontSize: 14)),
                ],
              ),
            
              Divider(
                height: 1, color: Colors.grey[100],
              ),
            ],
          ),
          
          Divider(height: 30, color: Colors.grey[300]),
          
          const Text(
            'Endereço:',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 2),
          const Text(
            'Rua das Flores, 123 - Bairro Primavera, Cidade, Estado, 12345-678',
            style: TextStyle(fontSize: 14), 
          ),
          
          const SizedBox(height: 20),

          const Text(
            'Sobre o usuário:',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 2),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lacinia odio vitae vestibulum. '
            'Suspendisse potenti. Nulla facilisi. Morbi ac velit nec urna tincidunt tristique.',
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
