import 'package:academy/utils/search_bar.dart';
import 'package:academy/utils/colors.dart';
import 'package:flutter/material.dart';

class HistoryTab extends StatelessWidget {
  final double screenwidth;
  const HistoryTab({super.key, required this.screenwidth});

  @override
  Widget build(BuildContext context) {
    double progress = 0.70;
    var value = progress * 100;
    return Column(
      children: [
        Search_Bar(screenwidth: screenwidth),
        Expanded(
          child: ListView.builder(
              itemCount: 30,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
                  padding: const EdgeInsets.all(10),
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.TERNARY_COLOR),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                              style: TextStyle(
                                  color: AppColors.TERNARY_COLOR,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                              "Traning name "),
                          Row(
                            children: const [
                              Icon(
                                Icons.date_range_sharp,
                                color: AppColors.TERNARY_COLOR,
                              ),
                              Text(
                                  style: TextStyle(color: Colors.white60),
                                  "  2020-Aug-14")
                            ],
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.access_time,
                                color: AppColors.TERNARY_COLOR,
                              ),
                              Text(
                                  style: TextStyle(color: Colors.white60),
                                  "  02:24:48")
                            ],
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.exit_to_app_outlined,
                                color: AppColors.TERNARY_COLOR,
                              ),
                              Text(
                                  style: TextStyle(color: Colors.white60),
                                  "  Passing")
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 30, top: 15),
                            height: 100,
                            child: Stack(
                              children: <Widget>[
                                Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white12,
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    width: 100,
                                    height: 100,
                                    child: CircularProgressIndicator(
                                      backgroundColor: Colors.white24,
                                      value: progress,
                                      // valueColor:
                                      //     new AlwaysStoppedAnimation<Color>(
                                      //         AppColors.SECONDARY_COLOR),
                                      color: AppColors.SECONDARY_COLOR,
                                    )),
                                Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 0,
                                    top: 30,
                                    child: Column(
                                      children: [
                                        Text(
                                          style: const TextStyle(
                                              color: AppColors.TERNARY_COLOR,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                          "${value.floor()}  %",
                                          textAlign: TextAlign.center,
                                        ),
                                        const Text(
                                          style: TextStyle(
                                              color: Colors.white38,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w900),
                                          "passed",
                                          textAlign: TextAlign.center,
                                        )
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
