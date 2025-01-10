import 'package:flutter/material.dart';
import 'package:admapu/_old/presentation/screens/shared/text_field_box.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
        centerTitle: true,
      ),
      body: _SignInView(),
    );
  }
}

class _SignInView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextFieldBox(
              placeholder: 'Username',
            ),
            const SizedBox(height: 10),
            const TextFieldBox(
              placeholder: 'Password',
              isPassword: true,
            ),
            const SizedBox(height: 20),
            OutlinedButton(onPressed: () {}, child: Text("Sign in")),
          ],
        ),
      ),
    );
  }
}
