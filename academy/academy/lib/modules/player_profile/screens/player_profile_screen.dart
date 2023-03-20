import 'package:academy/modules/player_profile/screens/history_tab.dart';
import 'package:academy/modules/player_profile/models/player_card.dart';
import 'package:academy/modules/player_profile/screens/player_profile_tab.dart';
import 'package:academy/modules/player_profile/screens/player_settings_tab.dart';
import 'package:academy/utils/colors.dart';
import 'package:academy/utils/custom_top_app_bar.dart';
import 'package:flutter/material.dart';

class PlayerProfileScreen extends StatefulWidget {
  const PlayerProfileScreen({
    super.key,
  });

  static const routeName = "/BottomNaviagtionBarScreens";

  @override
  State<PlayerProfileScreen> createState() => _PlayerProfileScreenState();
}

class _PlayerProfileScreenState extends State<PlayerProfileScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  int notificationsNumber = 0;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: CustomTopAppBar(textTitle: 'Leo Korsgaar'),
        body: Container(
          color: AppColors.PRIMARY_COLOR,
          child: Column(
            children: [
              PlayerCard(
                screenHeight: screenHeight,
                screenWidth: screenWidth,
              ),
              TabBar(
                padding: const EdgeInsets.only(top: 8),
                controller: _tabController,
                indicatorColor: AppColors.SECONDARY_COLOR,
                tabs: const [
                  Tab(
                    child: Text(
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                        "PROFILE"),
                  ),
                  Tab(
                      child: Text(
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                          "HISTORY")),
                  Tab(
                      child: Text(
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                          "SETTINGS")),
                ],
              ),
              Expanded(
                child: TabBarView(controller: _tabController, children: [
                  const PlayerProfileTab(),
                  HistoryTab(screenwidth: screenWidth),
                  PlayerSettingsTab(),
                ]),
              ),
            ],
          ),
        ));
  }
}
