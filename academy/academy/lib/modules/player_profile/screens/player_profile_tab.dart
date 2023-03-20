import 'package:academy/modules/player_profile/models/information_table.dart';
import 'package:academy/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:multi_charts/multi_charts.dart';

TextStyle titlesStyle = const TextStyle(
  fontFamily: 'SourceSensPro',
  fontSize: 20,
  color: AppColors.PRIMARY_TEXT,
  fontWeight: FontWeight.w700,
  fontStyle: FontStyle.normal,
  letterSpacing: 1,
);

var radarChartLabels = [
  "Passing",
  "  Defending",
  " Positioning",
  "Speed    ",
  "Dribbling  ",
];

class PlayerProfileTab extends StatefulWidget {
  const PlayerProfileTab({super.key});
  static const routeName = "/Profile";
  @override
  State<PlayerProfileTab> createState() => _PlayerProfileTab();
}

class _PlayerProfileTab extends State<PlayerProfileTab> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.PRIMARY_COLOR,
        body: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.85,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 35),
                  Text(
                    'Overall Performence',
                    style: titlesStyle,
                  ),
                  const SizedBox(height: 20),
                  RadarChart(
                    values: const [10, 4, 8, 5, 3],
                    labelColor: AppColors.PRIMARY_TEXT,
                    maxValue: 10,
                    fillColor: AppColors.SECONDARY_COLOR,
                    chartRadiusFactor: 0.8,
                    strokeColor: AppColors.PRIMARY_TEXT,
                    labels: radarChartLabels,
                    textScaleFactor: 0.07,
                  ),
                  const SizedBox(height: 20),
                  Text('More Information', style: titlesStyle),
                  const SizedBox(height: 20),
                  InformationTable(),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
