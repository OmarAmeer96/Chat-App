import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.text});

  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            color: Color(0xff2b465d),
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
