// ignore_for_file: use_build_context_synchronously

import 'package:chat_app_/servives/auth/auth_service.dart';
import 'package:chat_app_/components/my_button.dart';
import 'package:chat_app_/components/my_textfield.dart';
import 'package:chat_app_/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? ontap;
  const LoginPage({super.key, this.ontap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _pwController = TextEditingController();

  void login(BuildContext context) async {
    // Use a parent context
    final navigatorContext = context;

    // auth service
    final authService = AuthService();

    // try login
    try {
      showDialog(
        context: navigatorContext,
        builder: (context) => const Center(
          child: CircularProgressIndicator(),
        ),
      );
      await authService.signInWithEmailPassword(
          _emailController.text, _pwController.text, context);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
      // if (mounted) {
      Navigator.of(navigatorContext).pop(); // Close the progress dialog
      // }
    } catch (e) {
      if (mounted) {
        Navigator.of(navigatorContext).pop(); // Close the progress dialog
        showDialog(
          context: navigatorContext,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(
              height: 60,
            ),
            Text(
              "Welcome back, you've been missed!",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            MyTextfield(
              controller: _emailController,
              obscureText: false,
              hintText: 'Email', focusNode: null,
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextfield(
              controller: _pwController,
              hintText: 'Password',
              obscureText: true, focusNode: null,
            ),
            const SizedBox(
              height: 25,
            ),
            MyButton(
              text: 'Login',
              ontap: () => login(context),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member? ',
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                GestureDetector(
                  onTap: widget.ontap,
                  child: Text('Register now',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
