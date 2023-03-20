import 'package:academy/modules/player_profile/screens/player_profile_screen.dart';
import 'package:academy/modules/rating_board/screen/rating_board.dart';
import 'package:academy/utils/colors.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarScreens extends StatefulWidget {
  
  static String routeName = "/bottom_navigation_bar_screens";
  @override
  State<BottomNavigationBarScreens> createState() =>
      _BottomNavigationBarScreensState();
}

class _BottomNavigationBarScreensState
    extends State<BottomNavigationBarScreens> {
  int active = 0;
  final PageController _myPage = PageController(initialPage: 0);

  List list = [
    {"index": 0, "icon": Icons.sports_basketball},
    {"index": 1, "icon": Icons.home_outlined},
    {"index": 2, "icon": Icons.bar_chart},
    {"index": 3, "icon": Icons.person_outlined},
  ];

  bool isActive(int index) {
    return index == active;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: FloatingActionButton(
            splashColor: AppColors.SECONDARY_COLOR,
            backgroundColor: AppColors.TERNARY_COLOR,
            onPressed: () {},
            child: const Icon(Icons.add,
                color: AppColors.PRIMARY_COLOR, size: 28), //icon inside button
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
          color: AppColors.TERNARY_COLOR,
          child: BottomAppBar(
            color: AppColors.PRIMARY_COLOR,
            shape: const CircularNotchedRectangle(),
            notchMargin: 4,
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(width: 2.0, color: AppColors.TERNARY_COLOR),
                ),
              ),
              height: 70,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ...list.map((e) {
                    return IconButton(
                      color: isActive(e["index"])
                          ? AppColors.SECONDARY_COLOR
                          : AppColors.TERNARY_COLOR,
                      iconSize: 30.0,
                      padding: const EdgeInsets.only(left: 28.0),
                      icon: Icon(e["icon"]),
                      onPressed: () {
                        setState(() {
                          active = e["index"];
                          _myPage.jumpToPage(e["index"]);
                        });
                      },
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
        body: PageView(
          controller: _myPage,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            Text('Nothing'),
            Text('Home'),
            RatingBoard(),
            PlayerProfileScreen(),

            /// Widgets of the screens / pages
          ],
        ),
      ),
    );
  }
}
