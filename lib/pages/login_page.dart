import 'package:chat_app_/components/my_button.dart';
import 'package:chat_app_/components/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final void Function()? ontap;
  LoginPage({super.key, this.ontap});

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _pwController = TextEditingController();

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
              color: Theme.of(context).primaryColor,
            ),
            const SizedBox(
              height: 60,
            ),
            Text(
              "Welcome back, you've been missed!",
              style: TextStyle(
                  fontSize: 16, color: Theme.of(context).primaryColor),
            ),
            const SizedBox(
              height: 25,
            ),
            MyTextfield(
              controller: _emailController,
              obscureText: false,
              hintText: 'Email',
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextfield(
              controller: _pwController,
              hintText: 'Password',
              obscureText: true,
            ),
            const SizedBox(
              height: 25,
            ),
            MyButton(
              text: 'Login',
              ontap: () {},
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
                  onTap: ontap,
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
