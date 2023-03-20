import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class BoldText extends StatelessWidget {
  final String Text_;
  final double fontSize_;
  final Color fontColor_;
  const BoldText(
      {super.key,
      required this.Text_,
      required this.fontSize_,
      required this.fontColor_});

  @override
  Widget build(BuildContext context) {
    return Text(Text_,
        style: TextStyle(
          color: fontColor_,
          fontWeight: FontWeight.bold,
          fontSize: fontSize_,
        ));
  }
}
