import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.text, this.onTap});

  String text;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 40,
        width: double.infinity,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: kPrimaryColor,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
