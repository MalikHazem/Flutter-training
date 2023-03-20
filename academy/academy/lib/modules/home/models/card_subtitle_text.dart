import 'package:academy/utils/colors.dart';
import 'package:flutter/material.dart';

class CardSubtitleText extends StatelessWidget {
  final String title;

  const CardSubtitleText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: AppColors.TERNARY_COLOR,
        fontSize: 15,
      ),
    );
  }
}
