import 'package:academy/utils/colors.dart';
import 'package:flutter/material.dart';

class OrangeButton extends StatelessWidget {
  const OrangeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.SECONDARY_COLOR,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {},
        label: const Text(
          'Comparison',
          style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
            fontSize: 20,
            fontFamily: 'SourceSansPro',
            fontWeight: FontWeight.w700,
            letterSpacing: 0.05,
          ),
        ),
        icon:
            const Icon(Icons.shuffle_sharp, color: Color.fromRGBO(0, 0, 0, 1)),
      ),
    );
  }
}
