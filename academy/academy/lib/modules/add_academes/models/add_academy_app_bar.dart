import 'package:academy/utils/colors.dart';
import 'package:flutter/material.dart';

class AddAcademyAppBar extends StatelessWidget with PreferredSizeWidget {
  AddAcademyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.PRIMARY_COLOR,
      title: Text(
        "ADD ACADEMES",
        style: TextStyle(color: Colors.grey.shade200, letterSpacing: 2),
      ),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios),
      ),
    );
  }
}
