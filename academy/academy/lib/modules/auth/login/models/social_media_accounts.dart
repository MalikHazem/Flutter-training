import 'package:academy/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialMediaAccounts extends StatelessWidget {
  SocialMediaAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        socialmedia(image: "assets/images/Facebook.svg"),
        socialmedia(image: "assets/images/Twitter.svg"),
        socialmedia(image: "assets/images/Google.svg"),
      ],
    );
  }

  Container socialmedia({String image = ""}) {
    return Container(
      padding: const EdgeInsets.all(11),
      height: 60,
      width: 60,
      decoration: const BoxDecoration(
          shape: BoxShape.circle, color: AppColors.SECONDARY_COLOR),
      child: SvgPicture.asset(image),
    );
  }
}
