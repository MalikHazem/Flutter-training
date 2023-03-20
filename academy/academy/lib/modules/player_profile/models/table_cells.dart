import 'package:academy/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomTableCell extends StatelessWidget {
  String? title;
  bool is_bold;
  CustomTableCell({super.key, required this.title, required this.is_bold});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Text(
        "$title",
        style: TextStyle(
          color: AppColors.PRIMARY_TEXT,
          fontFamily: 'SourceSanePro',
          fontWeight: is_bold ? FontWeight.bold : FontWeight.w100,
          fontStyle: FontStyle.normal,
          fontSize: 14,
          letterSpacing: 1,
        ),
      ),
    );
  }
}
