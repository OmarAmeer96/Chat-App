import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.hintText, required this.labelText});

  String? hintText;
  String? labelText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 23,
          horizontal: 12,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xffE5E4E2),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        label: Text(
          labelText!,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
