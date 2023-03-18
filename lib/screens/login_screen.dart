import 'package:chat_app/constants.dart';
import 'package:chat_app/screens/register_screen.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 4),
            Image.asset('assets/images/scholar.png'),
            const Text(
              'Scholar Chat',
              style: TextStyle(
                fontSize: 32,
                fontFamily: 'Pacifico',
                color: Colors.white,
              ),
            ),
            const Spacer(flex: 2),
            Row(
              children: const [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Spacer(flex: 1),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: CustomTextField(
                hintText: 'Enter your Email',
                labelText: 'Email',
              ),
            ),
            CustomTextField(
              hintText: 'Enter your Password',
              labelText: 'Password',
            ),
            const Spacer(flex: 1),
            CustomButton(text: 'Login'),
            const Spacer(flex: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'RegisterScreen');
                  },
                  child: Text(
                    '  Register',
                    style: TextStyle(
                      color: Colors.blue[200],
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            ),
            const Spacer(flex: 5),
          ],
        ),
      ),
    );
  }
}
