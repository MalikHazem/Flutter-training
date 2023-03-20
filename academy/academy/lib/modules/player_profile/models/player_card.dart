import 'package:academy/modules/player_profile/models/comparison_button.dart';
import 'package:academy/utils/colors.dart';
import 'package:flutter/material.dart';

class label extends StatelessWidget {
  String labelTxt;
  Color colorTxt;
  FontWeight fontWight;
  label(
      {super.key,
      required this.labelTxt,
      required this.colorTxt,
      required this.fontWight});

  @override
  Widget build(BuildContext context) {
    return (Text(
        style: TextStyle(
          fontWeight: fontWight,
          color: colorTxt,
          fontSize: 15,
        ),
        "${labelTxt}  "));
  }
}

const List labelList = ["Name  ", "Age  ", "Position"];
const List dataList = ["Ahmed Saed  ", "11 Years  ", "Defender"];

class PlayerCard extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  const PlayerCard(
      {super.key, required this.screenHeight, required this.screenWidth});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.amber)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
              alignment: Alignment.bottomCenter,
              width: 0.4 * (screenWidth - 40),
              child: Image.asset('assets/images/child_image.png')),
          Container(
            width: 0.5 * (screenWidth - 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ...(labelList).map((labelhere) {
                            return Container(
                              padding: EdgeInsets.only(bottom: 10),
                              child: label(
                                labelTxt: labelhere,
                                colorTxt: Colors.white60,
                                fontWight: FontWeight.normal,
                              ),
                            );
                          })
                        ]),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ...(dataList).map((datahere) {
                            return Container(
                              padding: EdgeInsets.only(bottom: 10),
                              child: label(
                                fontWight: FontWeight.bold,
                                labelTxt: datahere,
                                colorTxt: AppColors.TERNARY_COLOR,
                              ),
                            );
                          })
                        ]),
                  ],
                ),
                const SizedBox(height: 10),
                const OrangeButton(),
                const SizedBox(height: 15),
              ],
            ),
          )
        ],
      ),
    );
  }
}
