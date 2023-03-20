import 'package:academy/modules/rating_board/models/RatingBoard_model.dart';
import 'package:academy/utils/colors.dart';
import 'package:flutter/material.dart';

class RatingBoard extends StatefulWidget {
  const RatingBoard({super.key});

  static const routeName = "/ratingBoard";

  @override
  State<RatingBoard> createState() => _RatingBoardState();
}

class _RatingBoardState extends State<RatingBoard> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    List<Rating> ratings = [];
    ratings.add(
      Rating(
          id: 1,
          name: "Mahmoud",
          positions: "Attacker",
          rating: 5.0,
          image: "https://www.woolha.com/media/2020/03/eevee.png"),
    );
    ratings.add(
      Rating(
          id: 2,
          name: "Hasan",
          positions: "Attacker",
          rating: 4.9,
          image: "https://www.woolha.com/media/2020/03/eevee.png"),
    );
    ratings.add(
      Rating(
          id: 3,
          name: "Raouf Naje",
          positions: "Attacker",
          rating: 4.8,
          image: "https://www.woolha.com/media/2020/03/eevee.png"),
    );
    ratings.add(
      Rating(
          id: 4,
          name: "Yassine",
          positions: "Centre",
          rating: 4.2,
          image: "https://www.woolha.com/media/2020/03/eevee.png"),
    );
    ratings.add(
      Rating(
          id: 5,
          name: "Mazen Eid",
          positions: "Centre",
          rating: 4.1,
          image: "https://www.woolha.com/media/2020/03/eevee.png"),
    );
    ratings.add(
      Rating(
          id: 6,
          name: "Raja Nasser",
          positions: "Defender",
          rating: 3.8,
          image: "https://www.woolha.com/media/2020/03/eevee.png"),
    );
    ratings.add(
      Rating(
          id: 7,
          name: "Taym Salah",
          positions: "Attacker",
          rating: 3.7,
          image: "https://www.woolha.com/media/2020/03/eevee.png"),
    );
    ratings.add(
      Rating(
          id: 8,
          name: "Malik Hazem",
          positions: "Centre",
          rating: 5.0,
          image: "https://www.woolha.com/media/2020/03/eevee.png"),
    );

    final rating1 = ratings[0];
    final rating2 = ratings[1];
    final rating3 = ratings[2];

    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: 3,
          child: Container(
            width: double.infinity,
            color: AppColors.PRIMARY_COLOR,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Title
                Container(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 20),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Rating ",
                          style: TextStyle(
                              color: AppColors.TERNARY_COLOR,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "Board",
                          style: TextStyle(
                              color: AppColors.SECONDARY_COLOR,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )),
                // AppBar
                const TabBar(
                  labelPadding: EdgeInsets.all(8.0),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 2.0,
                        color: AppColors.SECONDARY_COLOR,
                      ),
                    ),
                  ),
                  tabs: [
                    Text(
                      "Trainers",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Players",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Teams",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),

                // TOP 3 PLAYERS
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      // Player 3
                      Expanded(
                          child: Column(
                        children: [
                          SizedBox(
                            child: Stack(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(rating3.image),
                                  backgroundColor: AppColors.SECONDARY_COLOR,
                                  radius: width * 0.115,
                                ),
                                Positioned(
                                  bottom: 5,
                                  left: 0,
                                  child: CircleAvatar(
                                    backgroundColor: AppColors.TERNARY_COLOR,
                                    radius: width * 0.03,
                                    child: Text(
                                      (rating3.id).toString(),
                                      style: const TextStyle(
                                          color: AppColors.PRIMARY_COLOR),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: height * 0.02),
                          SizedBox(
                            child: Column(
                              children: [
                                Text(
                                  rating3.name,
                                  style: TextStyle(
                                    color: AppColors.SECONDARY_TEXT,
                                    fontSize: width * 0.050,
                                  ),
                                ),
                                SizedBox(height: height * 0.005),
                                Text(
                                  rating3.positions,
                                  style: TextStyle(
                                    color: AppColors.TERNARY_COLOR,
                                    fontSize: width * 0.035,
                                  ),
                                ),
                                SizedBox(height: height * 0.005),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      (rating3.rating).toString(),
                                      style: TextStyle(
                                          color: AppColors.PRIMARY_TEXT,
                                          fontSize: width * 0.04),
                                    ),
                                    const SizedBox(width: 5),
                                    Icon(
                                      Icons.star,
                                      color: AppColors.SECONDARY_COLOR,
                                      size: width * 0.068,
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                      // Player 1
                      Expanded(
                        child: Padding(
                            padding: const EdgeInsets.only(bottom: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  child: Stack(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage:
                                            NetworkImage(rating1.image),
                                        backgroundColor:
                                            AppColors.SECONDARY_COLOR,
                                        radius: width * 0.14,
                                      ),
                                      Positioned(
                                        bottom: 10,
                                        left: 0,
                                        child: CircleAvatar(
                                          backgroundColor:
                                              AppColors.TERNARY_COLOR,
                                          radius: width * 0.03,
                                          child: Text(
                                            (rating1.id).toString(),
                                            style: const TextStyle(
                                                color: AppColors.PRIMARY_COLOR),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: height * 0.02),
                                SizedBox(
                                  child: Column(
                                    children: [
                                      Text(
                                        rating1.name,
                                        style: TextStyle(
                                          color: AppColors.SECONDARY_TEXT,
                                          fontSize: width * 0.050,
                                        ),
                                      ),
                                      SizedBox(height: height * 0.005),
                                      Text(
                                        rating1.positions,
                                        style: TextStyle(
                                          color: AppColors.TERNARY_COLOR,
                                          fontSize: width * 0.035,
                                        ),
                                      ),
                                      SizedBox(height: height * 0.005),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            (rating1.rating).toString(),
                                            style: TextStyle(
                                                color: AppColors.PRIMARY_TEXT,
                                                fontSize: width * 0.04),
                                          ),
                                          const SizedBox(width: 5),
                                          Icon(
                                            Icons.star,
                                            color: AppColors.SECONDARY_COLOR,
                                            size: width * 0.068,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                      // Player 2
                      Expanded(
                        child: Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  child: Stack(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage:
                                            NetworkImage(rating2.image),
                                        backgroundColor:
                                            AppColors.SECONDARY_COLOR,
                                        radius: width * 0.125,
                                      ),
                                      Positioned(
                                        bottom: 5,
                                        left: 0,
                                        child: CircleAvatar(
                                          backgroundColor:
                                              AppColors.TERNARY_COLOR,
                                          radius: width * 0.03,
                                          child: Text(
                                            (rating2.id).toString(),
                                            style: const TextStyle(
                                                color: AppColors.PRIMARY_COLOR),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: height * 0.02),
                                SizedBox(
                                  child: Column(
                                    children: [
                                      Text(
                                        rating2.name,
                                        style: TextStyle(
                                          color: AppColors.SECONDARY_TEXT,
                                          fontSize: width * 0.050,
                                        ),
                                      ),
                                      SizedBox(height: height * 0.005),
                                      Text(
                                        rating2.positions,
                                        style: TextStyle(
                                          color: AppColors.TERNARY_COLOR,
                                          fontSize: width * 0.035,
                                        ),
                                      ),
                                      SizedBox(height: height * 0.005),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            (rating2.rating).toString(),
                                            style: TextStyle(
                                                color: AppColors.PRIMARY_TEXT,
                                                fontSize: width * 0.04),
                                          ),
                                          const SizedBox(width: 5),
                                          Icon(
                                            Icons.star,
                                            color: AppColors.SECONDARY_COLOR,
                                            size: width * 0.068,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                ),

                // List All Players
                Expanded(
                  child: ListView.builder(
                      itemCount: ratings.length - 3,
                      itemBuilder: (context, index) {
                        index = index + 3;
                        final rating = ratings[index];

                        return Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              rating.id.toString(),
                              style: TextStyle(
                                fontSize: width * 0.052,
                                color: AppColors.PRIMARY_TEXT,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            CircleAvatar(
                              backgroundImage: NetworkImage(rating.image),
                              backgroundColor: AppColors.SECONDARY_COLOR,
                              radius: width * 0.08,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            SizedBox(
                              width: width * 0.40,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    rating.name,
                                    style: TextStyle(
                                      fontSize: width * 0.055,
                                      color: AppColors.SECONDARY_TEXT,
                                    ),
                                  ),
                                  Text(
                                    rating.positions,
                                    style: const TextStyle(
                                      color: AppColors.TERNARY_COLOR,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: width * 0.14,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 1),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: AppColors.SECONDARY_COLOR,
                                    size: width * 0.068,
                                  ),
                                  Text(
                                    (rating.rating).toString(),
                                    style: TextStyle(
                                        color: AppColors.TERNARY_COLOR,
                                        fontSize: width * 0.04),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 80,
                            )
                          ],
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
