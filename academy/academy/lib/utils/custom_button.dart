// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'colors.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  String text;
  double? buttonWidth;
  double? buttonHeight;

  CustomButton({
    super.key,
    required this.text,
    this.buttonWidth,
    this.buttonHeight,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth ?? MediaQuery.of(context).size.width * 9 / 10,
      height: buttonHeight ?? 60,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.SECONDARY_COLOR,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: AppColors.PRIMARY_TEXT),
        ),
      ),
    );
  }
}
