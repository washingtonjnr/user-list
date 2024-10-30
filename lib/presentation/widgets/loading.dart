import 'package:flutter/material.dart';
import 'package:users/presentation/styles/colors.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(color: AppColors.primary);
  }
}