import 'package:chat_app_/auth/auth_service.dart';
import 'package:chat_app_/components/my_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  void logout(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
    // Get Auth Service
    final _auth = AuthService();
    _auth.signOut();
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          // logout button
          IconButton(
              onPressed: () => logout(context), icon: const Icon(Icons.logout))
        ],
      ),
      drawer: const MyDrawer(),
    );
  }
}
