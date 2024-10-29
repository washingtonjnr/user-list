import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String? avatarUrl;
  final String name;

  const Avatar({
    super.key,
    required this.name,
    this.avatarUrl,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey[200],
      child: avatarUrl != null && avatarUrl!.isNotEmpty
          ? ClipOval(
              child: Image.network(
                avatarUrl!,
                fit: BoxFit.cover,
                width: 40,
                height: 40,
                errorBuilder: (context, error, stackTrace) {
                  return _buildInitial();
                },
              ),
            )
          : _buildInitial(),
    );
  }

  Widget _buildInitial() {
    return Text(
      name[0].toUpperCase(),
      style: const TextStyle(fontSize: 24, color: Colors.black),
    );
  }
}


