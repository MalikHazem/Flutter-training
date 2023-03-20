import 'package:academy/utils/colors.dart';
import 'package:academy/utils/custom_text_field.dart';
import 'package:flutter/material.dart';

class SpecialRowTextField extends StatelessWidget {
  double width;
  SpecialRowTextField({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTextField(
          label: "Location",
          hint: "Hebron Westbank",
          width: 0.7 * width,
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColors.SECONDARY_COLOR,
            borderRadius: BorderRadius.circular(10),
          ),
          height: 60,
          width: 60,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.place,
              color: AppColors.PRIMARY_TEXT,
              size: 30,
            ),
          ),
        )
      ],
    );
  }
}
