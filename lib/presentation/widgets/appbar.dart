import 'package:flutter/material.dart';
// Colors
import 'package:users/presentation/styles/colors.dart';

class AppTopBar extends StatelessWidget {
  final String? title;

  const AppTopBar({super.key, this.title});

  @override
  Widget build(BuildContext context) => AppBar(
        shadowColor: const Color(0xFF004D40), 
        backgroundColor: AppColors.primary, 
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: title != null 
          ? Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title!,
                  style: const TextStyle(color: Color(0xFFFFFFFF)),
                ),
              ],
            ) 
          : const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.local_hospital_rounded, size: 35),
              ],
            ),

      );
}
