import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  const EmailField({super.key});

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
          Icons.message,
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
        hintText: "Enter in your email",
      ),
    );
  }
}
