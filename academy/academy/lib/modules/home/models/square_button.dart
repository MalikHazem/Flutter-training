import 'package:academy/utils/colors.dart';
import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {
  final String title;
  final double width;
  final IconData icon;

  SquareButton({
    super.key,
    required this.title,
    required this.width,
    required this.icon, required Null Function() onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.SECONDARY_COLOR,
          shape: RoundedRectangleBorder(
            //to set border radius to button
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {
          //code to execute when this button is pressed.
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: width / 2,
            ),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              textScaleFactor: 1.5,
            ),
          ],
        ),
      ),
    );
  }
}
