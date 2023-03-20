import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Colors.white70,
            ),
          ),
          prefixIcon: Icon(
            Icons.security,
            color: Colors.white70,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide(
              width: 1,
              color: Colors.white70,
            ),
          ),
          filled: false,
          hintStyle: TextStyle(
            color: Colors.white70,
          ),
          hintText: "Enter in your password",
          fillColor: Colors.white70),
    );
  }
}
