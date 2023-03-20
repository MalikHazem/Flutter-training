import 'package:academy/modules/drawer/models/custom_tile.dart';
import 'package:academy/modules/drawer/models/drawer_screen_app_bar.dart';
import 'package:academy/modules/drawer/models/image_with_title.dart';
import 'package:academy/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  static const routeName = "/CustomNDrawer";

  var dataInfo = [
    {
      "title": "Academy",
      "icon": "assets/icons/academyScreenLogo.svg",
      "routes": ""
    },
    {"title": "Seasons", "icon": "assets/icons/seasonsIcon.svg", "routes": ""},
    {"title": "History", "icon": "assets/icons/historyIcon.svg", "routes": ""},
    {"title": "Logout", "icon": "assets/icons/logoutIcon.svg", "routes": ""},
  ];

  CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: const DrawerScreenAppBar(),
      body: Center(
        child: Container(
          width: width * 0.9,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.PRIMARY_COLOR,
                AppColors.PRIMARY_GRADIANT_COLOR,
              ],
            ),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),

          ///
          child: SingleChildScrollView(
            child: Column(
              children: [
                const ImageWithTitle(),
                const SizedBox(height: 25),
                ...dataInfo.map(
                  (item) {
                    return CustomTile(
                      icon: item["icon"].toString(),
                      title: item["title"].toString(),
                      routeScreen: item["routes"].toString(),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
