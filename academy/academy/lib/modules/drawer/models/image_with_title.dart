import 'package:academy/utils/colors.dart';
import 'package:flutter/material.dart';

class ImageWithTitle extends StatelessWidget {
  const ImageWithTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: AppColors.SECONDARY_COLOR,
            borderRadius: const BorderRadius.all(Radius.circular(50.0)),
            border: Border.all(
              color: AppColors.SECONDARY_TEXT,
              width: 4.0,
            ),
          ),
        ),
        const Text(
          "Ali Hassan",
          style: TextStyle(
            color: AppColors.PRIMARY_TEXT,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          "Noba Academy",
          style: TextStyle(color: AppColors.PRIMARY_TEXT),
        ),
      ],
    );
  }
}
