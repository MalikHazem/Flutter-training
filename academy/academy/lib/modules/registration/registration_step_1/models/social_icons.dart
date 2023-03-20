import 'package:academy/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 50, right: 50),
      width: MediaQuery.of(context).size.width * 90 / 100,
      height: MediaQuery.of(context).size.height * 0.086,
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: AppColors.SECONDARY_COLOR,
              shape: const CircleBorder(),
            ),
            child: Center(
              child: SvgPicture.asset(
                "assets/images/Facebook.svg",
                color: AppColors.PRIMARY_COLOR,
                width: MediaQuery.of(context).size.width * 0.0251,
                height: MediaQuery.of(context).size.height * 0.0482,
              ),
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: AppColors.SECONDARY_COLOR,
              shape: const CircleBorder(),
            ),
            child: Center(
              child: SvgPicture.asset(
                "assets/images/Twitter.svg",
                color: AppColors.PRIMARY_COLOR,
                width: MediaQuery.of(context).size.width * 0.0459,
                height: MediaQuery.of(context).size.height * 0.0367,
              ),
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: AppColors.SECONDARY_COLOR,
              shape: const CircleBorder(),
            ),
            child: Center(
              child: SvgPicture.asset(
                "assets/images/Google.svg",
                color: AppColors.PRIMARY_COLOR,
                width: MediaQuery.of(context).size.width * 0.0517,
                height: MediaQuery.of(context).size.height * 0.0517,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
