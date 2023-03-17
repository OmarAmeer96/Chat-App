import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2b475e),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/scholar.png'),
            const Text(
              'Scholar Chat',
              style: TextStyle(
                fontSize: 32,
                fontFamily: 'Pacifico',
                color: Colors.white,
              ),
            ),
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            CustomTextField(
              hintText: 'Enter your Email',
              labelText: 'Email',
            ),
            CustomTextField(
              hintText: 'Enter your Password',
              labelText: 'Password',
            ),
            CustomButton(text: 'Login'),
          ],
        ),
      ),
    );
  }
}
