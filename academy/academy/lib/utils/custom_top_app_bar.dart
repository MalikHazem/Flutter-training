import 'package:academy/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomTopAppBar extends StatelessWidget with PreferredSizeWidget {
  int notificationsNumber = 0;
  String textTitle;
  Color barColor;
  CustomTopAppBar({
    super.key,
    required this.textTitle,
    this.barColor = AppColors.PRIMARY_TEXT,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      backgroundColor: AppColors.PRIMARY_COLOR,
      leading: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.PRIMARY_COLOR,
          ),
          onPressed: () => {Navigator.pop(context)},
          child: const Icon(Icons.arrow_back_ios)),
      title: Text(
        textTitle,
        style: const TextStyle(
            color: AppColors.PRIMARY_TEXT,
            fontWeight: FontWeight.w600,
            fontSize: 30),
      ),
      actions: <Widget>[
        Stack(children: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            iconSize: 40,
            onPressed: () {
              //do something
            },
          ),
          notificationsNumber > 0
              ? Positioned(
                  right: 10,
                  top: 10,
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: AppColors.SECONDARY_COLOR,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 15,
                      minHeight: 15,
                    ),
                    child: Text(
                      notificationsNumber.toString(),
                      style: const TextStyle(
                        color: AppColors.PRIMARY_TEXT,
                      ),
                    ),
                  ),
                )
              : const Text(""),
        ])
      ],
      bottom: PreferredSize(
          // ignore: sort_child_properties_last
          child: Container(
            color: barColor,
            height: 1.0,
          ),
          preferredSize: const Size.fromHeight(1.0)),
    );
  }
}
