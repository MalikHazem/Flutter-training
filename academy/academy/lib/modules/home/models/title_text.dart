import 'package:academy/utils/colors.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String title;

  const TitleText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: AppColors.TERNARY_COLOR,
        fontWeight: FontWeight.bold,
        fontSize: 22,
      ),
    );
  }
}
