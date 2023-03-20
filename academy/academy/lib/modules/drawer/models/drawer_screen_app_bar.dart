import 'package:academy/utils/colors.dart';
import 'package:flutter/material.dart';

class DrawerScreenAppBar extends StatelessWidget with PreferredSizeWidget {
  const DrawerScreenAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    onPresseBack() {
      Navigator.pop(context);
    }

    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: Container(
        decoration: const BoxDecoration(
          color: AppColors.TERNARY_LIGHT_COLOR,
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
        ),
        child: IconButton(
          onPressed: onPresseBack,
          icon: const Icon(
            Icons.home,
            color: AppColors.PRIMARY_TEXT,
            size: 35,
          ),
        ),
      ),
    );
  }
}
