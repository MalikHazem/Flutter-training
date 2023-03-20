import 'package:academy/modules/notifications/notification_list_tile.dart';
import 'package:academy/utils/colors.dart';
import 'package:academy/utils/custom_top_app_bar.dart';
import 'package:flutter/material.dart';

class ParentsNotification extends StatelessWidget {
  static const String routeName = '/parentsnotification_screen';

  ParentsNotification({super.key});

  int notificationsNumber = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: CustomTopAppBar(
          textTitle: 'NOTIFICATIONS', barColor: AppColors.SECONDARY_COLOR),
      backgroundColor: AppColors.PRIMARY_COLOR,
      body: ListView(children: [
        NotificationListTile(date: DateTime.now()),
        const Divider(
          indent: 20,
          endIndent: 20,
          color: AppColors.PRIMARY_TEXT,
          height: 5,
        ),
        NotificationListTile(date: DateTime.now()),
      ]),
    );
  }
}
