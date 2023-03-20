import 'dart:ui';

import 'package:academy/modules/home/models/card_subtitle_text.dart';
import 'package:academy/modules/home/models/title_text.dart';
import 'package:academy/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CustomCard extends StatelessWidget {
  final double width;
  final double height;
  final String traningName;
  final int groupNumber;
  final int passed;
  final int hours;
  final int units;

  const CustomCard(
      {super.key,
      required this.width,
      required this.height,
      required this.traningName,
      required this.groupNumber,
      required this.units,
      required this.passed,
      required this.hours});

  @override
  Widget build(BuildContext context) {
    double passedDouble = passed / 100;
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.PRIMARY2_COLOR,
          boxShadow: const [
            BoxShadow(color: AppColors.PRIMARY2_COLOR, spreadRadius: 3),
          ],
        ),
        margin: const EdgeInsets.only(bottom: 15),
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            CircularPercentIndicator(
              radius: 34.0,
              lineWidth: 2.0,
              animation: true,
              percent: passedDouble,
              center: Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      '$passed%',
                      style: const TextStyle(
                        color: AppColors.TERNARY_COLOR,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const Text(
                      "Passed",
                      style: TextStyle(
                        color: AppColors.TERNARY_COLOR,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: AppColors.SECONDARY_COLOR.withOpacity(0.8),
            ),
            SizedBox(width: width * 0.04),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TitleText(title: traningName),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: AppColors.PRIMARY_TEXT,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text('Units',
                              style: TextStyle(
                                  color: AppColors.PRIMARY_TEXT, fontSize: 16)),
                          Text(units.toString(),
                              style: const TextStyle(
                                color: AppColors.PRIMARY_TEXT,
                                fontSize: 16,
                              )),
                        ],
                      ),
                      Column(
                        children: [
                          const Text('Members',
                              style: TextStyle(
                                  color: AppColors.PRIMARY_TEXT, fontSize: 16)),
                          Text(groupNumber.toString(),
                              style: const TextStyle(
                                  color: AppColors.PRIMARY_TEXT, fontSize: 16)),
                        ],
                      ),
                      Column(
                        children: [
                          const Text('Total Time',
                              style: TextStyle(
                                  color: AppColors.PRIMARY_TEXT, fontSize: 16)),
                          Text('$hours H',
                              style: const TextStyle(
                                  color: AppColors.PRIMARY_TEXT, fontSize: 16)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
