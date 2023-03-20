import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class NotificationListTile extends StatelessWidget {
  String title;
  String subtitle;
  DateTime date;

  NotificationListTile(
      {super.key,
      this.title = "title",
      this.subtitle =
          "Your Children has left training center at 2022-4-15 on 16:35 .",
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTile(
        leading: const Icon(
          Icons.run_circle,
          color: Colors.white,
        ),
        title: Text(
          title,
          style: const TextStyle(
              color: AppColors.TERNARY_COLOR,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        trailing: Text(
          date.toString(),
          style:
              const TextStyle(color: AppColors.SECONDARY_COLOR, fontSize: 18),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          subtitle,
          style: const TextStyle(color: AppColors.TERNARY_COLOR, fontSize: 18),
        ),
      )
    ]);
  }
}
