import 'package:academy/utils/colors.dart';
import 'package:flutter/material.dart';

class UploadImage extends StatelessWidget {
  double width, height;
  UploadImage({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 0.65 * width,
          height: 0.2 * height,
          decoration: const BoxDecoration(
            color: AppColors.PRIMARY_TEXT,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.image,
                color: AppColors.PRIMARY_COLOR,
                size: 55,
              ),
              SizedBox(height: 10),
              Text(
                "Please Select",
                style: TextStyle(
                  fontSize: 19,
                ),
              ),
              Text(
                "Academy Photo",
                style: TextStyle(
                  fontSize: 19,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 0.54 * width,
          top: 0.15 * height,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(
                side: BorderSide(width: 2, color: AppColors.PRIMARY_COLOR),
              ),
              padding: const EdgeInsets.all(20),
              backgroundColor: AppColors.SECONDARY_COLOR, // <-- Button color
            ),
            // ignore: prefer_const_constructors
            child: Icon(
              Icons.add,
              color: AppColors.PRIMARY_TEXT,
            ),
          ),
        )
      ],
    );
  }
}
