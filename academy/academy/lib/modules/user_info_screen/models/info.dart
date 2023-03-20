import 'package:academy/modules/user_info_screen/models/bold_text.dart';
import 'package:academy/utils/colors.dart';
import 'package:flutter/cupertino.dart';

class Info extends StatelessWidget {
  final String feild;
  final String amount;
  const Info({super.key, required this.feild, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BoldText(
          Text_: feild,
          fontSize_: 24,
          fontColor_: AppColors.TERNARY_COLOR,
        ),
        BoldText(
          Text_: amount,
          fontSize_: 24,
          fontColor_: AppColors.PRIMARY_TEXT,
        )
      ],
    );
  }
}
