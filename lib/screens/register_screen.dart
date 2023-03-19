import 'dart:async';

import 'package:chat_app/constants.dart';
import 'package:chat_app/screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  static String id = 'RegisterScreen';
  String? eamil;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          children: [
            const SizedBox(
              height: 100,
            ),
            Image.asset(
              'assets/images/scholar.png',
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Omario Chat',
                  style: TextStyle(
                    fontSize: 32,
                    fontFamily: 'Pacifico',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: const [
                Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: CustomTextField(
                onChanged: (data) {
                  eamil = data;
                },
                hintText: 'Enter your Email',
                labelText: 'Email',
              ),
            ),
            CustomTextField(
              onChanged: (data) {
                password = data;
              },
              hintText: 'Enter your Password',
              labelText: 'Password',
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
                onTap: () async {
                  var auth = FirebaseAuth.instance;
                  try {
                    await registerUser(auth);
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'weak-password') {
                      showSnackBar(
                          context, 'The password provided is too weak.');
                    } else if (e.code == 'email-already-in-use') {
                      showSnackBar(context,
                          'The account already exists for that email.');
                    }
                  }
                  showSnackBar(context, 'Account created successfully!');
                },
                text: 'Register'),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account?",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    '  Login',
                    style: TextStyle(
                      color: Colors.blue[200],
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  Future<void> registerUser(FirebaseAuth auth) async {
    UserCredential user = await auth.createUserWithEmailAndPassword(
      email: eamil!,
      password: password!,
    );
  }
}
