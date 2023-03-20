import 'package:academy/modules/player_profile/models/player_model.dart';
import 'package:academy/utils/colors.dart';
import 'package:flutter/material.dart';

class PlayerSettingsTab extends StatelessWidget {
  PlayerSettingsTab({super.key});

  int notificationsNumber = 5;

  PlayerModel Ahmed = PlayerModel(
    playerFullName: "Ahmed",
    playerId: "458254",
    playerBirthDate: DateTime.parse('2000-07-20'),
    playerCountry: "Palestine",
    playerPosition: "Defender",
  );

  @override
  Widget build(BuildContext context) {
    List list = [
      {"title": 'Player Full Name', "hintText": Ahmed.playerFullName},
      {"title": 'ID Number', "hintText": Ahmed.playerId},
      {"title": 'Birth Date', "hintText": (Ahmed.playerBirthDate.toString())},
      {"title": 'Country', "hintText": Ahmed.playerCountry},
      {"title": 'Position', "hintText": Ahmed.playerPosition},
    ];
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          ...list.map(
            (e) {
              return ListViewField(
                title: e["title"],
                txt: e["hintText"],
              );
            },
          ),
        ],
      ),
    );
  }
}

class ListViewField extends StatelessWidget {
  String title, txt;
  ListViewField({super.key, required this.title, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20.0),
          width: double.infinity,
          child: Text(
            title,
            style: const TextStyle(
              color: AppColors.PRIMARY_TEXT,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        TextField(
          style: const TextStyle(color: AppColors.PROFILE_COLOR),
          decoration: InputDecoration(
            hintText: txt,
            hintStyle: const TextStyle(color: AppColors.PROFILE_COLOR),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.PROFILE_COLOR),
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.PROFILE_COLOR),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ],
    );
  }
}
