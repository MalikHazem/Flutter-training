import 'package:academy/modules/user_info_screen/models/bold_text.dart';
import 'package:academy/utils/small_button.dart';
import 'package:academy/modules/user_info_screen/models/info.dart';
import 'package:academy/utils/colors.dart';
import 'package:flutter/material.dart';

import '../models/player_info.dart';

class PlayerInfoScreen extends StatelessWidget {
  const PlayerInfoScreen({super.key});

  static const routeName = "/PlayerInfo";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    insetPadding: EdgeInsets.zero,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    backgroundColor: AppColors.PRIMARY_COLOR,
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 0.5,
                                  blurRadius: 40,
                                  color: AppColors.SECONDARY_COLOR
                                      .withOpacity(0.5),
                                )
                              ],
                            ),
                            child: CircleAvatar(
                              backgroundColor: AppColors.SECONDARY_TEXT,
                              radius: 90,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(PlayerInfo.image),
                                radius: 85,
                              ),
                            ),
                          ),
                        ),
                        BoldText(
                          Text_: PlayerInfo.name,
                          fontSize_: 32,
                          fontColor_: AppColors.SECONDARY_TEXT,
                        ),
                        Text(
                          PlayerInfo.level,
                          style: const TextStyle(
                              color: AppColors.TERNARY_COLOR, fontSize: 20),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Info(
                                  feild: "Train",
                                  amount: PlayerInfo.train.toString()),
                              const SizedBox(
                                height: 52,
                                child: VerticalDivider(
                                    color: AppColors.TERNARY_COLOR,
                                    thickness: 0),
                              ),
                              Info(
                                  feild: "Games",
                                  amount: PlayerInfo.games.toString()),
                              const SizedBox(
                                height: 52,
                                child: VerticalDivider(
                                    color: AppColors.TERNARY_COLOR,
                                    thickness: 0),
                              ),
                              Info(
                                  feild: "Age",
                                  amount: PlayerInfo.age.toString()),
                              const SizedBox(
                                height: 52,
                                child: VerticalDivider(
                                    color: AppColors.TERNARY_COLOR,
                                    thickness: 0),
                              ),
                              Info(feild: "Team", amount: PlayerInfo.team),
                            ],
                          ),
                        )
                      ],
                    ),
                    actions: [
                      Container(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.height * 0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SmallButton(
                                text: "Close",
                                buttonColor:
                                    Color.fromRGBO(255, 255, 255, 0.08),
                                textColor: AppColors.TERNARY_COLOR),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            const SmallButton(
                                text: "Profile",
                                buttonColor: AppColors.SECONDARY_COLOR,
                                textColor: AppColors.PRIMARY_TEXT)
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Rate', style: TextStyle(fontSize: 20)),
            ),
          ]),
    );
  }
}
