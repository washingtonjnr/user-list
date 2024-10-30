import 'package:flutter/material.dart';
import 'package:users/presentation/widgets/appbar.dart';

class MainLayout extends StatelessWidget {
  final Widget child;
  final String? title;

  const MainLayout({
    super.key, 
    this.title,
    required this.child, 
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: AppTopBar(title: title),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.grey[50],
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
        child: child,
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.details),
      //       label: 'Detalhes',
      //     ),
      //   ],
      // ),
    );
  }
}
