import 'package:flutter/material.dart';

class CardBox extends StatelessWidget {
  final Widget child;

  const CardBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            spreadRadius: 1,
            offset: const Offset(0, 2),
            color: const Color.fromARGB(255, 184, 184, 184).withOpacity(0.1),
          ),
        ],
      ),
      child: child,
    );
  }
}
