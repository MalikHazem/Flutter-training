import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class AppStyles extends StatelessWidget {
  String text;
  static const BOLD_FONT_WEIGHT = FontWeight.bold;

  AppStyles({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: const TextStyle(color: AppColors.TERNARY_COLOR, fontSize: 20),
        ),
      ],
    );
  }
}
