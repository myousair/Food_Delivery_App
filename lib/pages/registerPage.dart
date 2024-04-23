// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_textField.dart';
import 'package:food_delivery_app/services/auth/authService.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late TextEditingController emailController = TextEditingController();

  late TextEditingController passwordController = TextEditingController();
  late TextEditingController confrmpasswordController = TextEditingController();

  void register() async {
    final _authService = AuthServices();

    if (passwordController.text == confrmpasswordController.text) {
      try {
        await _authService.signUnwithEmailPassword(
            emailController.text, passwordController.text);
      } catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    } else {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: FittedBox(child: Text("Password don't match! ")),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.lock_open_rounded,
                size: 72,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(height: 25),
              Text(
                'Let\'s create an account',
                style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(height: 25),
              const SizedBox(height: 10),
              MyTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obsecureText: false),
              const SizedBox(height: 10),
              MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obsecureText: true),
              const SizedBox(height: 10),
              MyTextField(
                  controller: confrmpasswordController,
                  hintText: 'Confirm Password',
                  obsecureText: true),
              const SizedBox(height: 20),
              MyButton(
                  ontap: () {
                    register();
                  },
                  text: 'Sign Up'),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                  const SizedBox(width: 04),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Log In",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
