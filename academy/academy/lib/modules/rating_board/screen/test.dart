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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    List<Rating> ratings = [];

    int _selectedIndex = 0;
    final RatingBoard _homeController = RatingBoard();
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

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
                    padding: const EdgeInsets.fromLTRB(120, 40, 30, 20),
                    width: double.infinity,
                    child: Row(
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
                Container(
                    padding: const EdgeInsets.fromLTRB(5, 20, 5, 10),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 35),
                                  child: SizedBox(
                                    width: 105,
                                    child: Stack(
                                      children: const [
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              'https://www.woolha.com/media/2020/03/eevee.png'),
                                          backgroundColor:
                                              AppColors.SECONDARY_COLOR,
                                          radius: 40,
                                        ),
                                        Positioned(
                                          bottom: 5,
                                          left: 0,
                                          child: CircleAvatar(
                                            backgroundColor:
                                                AppColors.TERNARY_COLOR,
                                            radius: 12,
                                            child: Text(
                                              "3",
                                              style: TextStyle(
                                                  color:
                                                      AppColors.PRIMARY_COLOR),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 15),
                                SizedBox(
                                  child: Column(
                                    children: [
                                      const Text(
                                        "Raouf Naje",
                                        style: TextStyle(
                                            color: AppColors.SECONDARY_TEXT,
                                            fontSize: 18),
                                      ),
                                      const SizedBox(height: 5),
                                      const Text(
                                        "Attacker",
                                        style: TextStyle(
                                            color: AppColors.TERNARY_COLOR),
                                      ),
                                      const SizedBox(height: 5),
                                      Row(
                                        children: const [
                                          Text(
                                            "4.9",
                                            style: TextStyle(
                                                color: AppColors.PRIMARY_TEXT),
                                          ),
                                          SizedBox(width: 5),
                                          Icon(
                                            Icons.star,
                                            color: AppColors.SECONDARY_COLOR,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )),
                        Container(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 110,
                                  child: Stack(
                                    children: const [
                                      CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            'https://www.woolha.com/media/2020/03/eevee.png'),
                                        backgroundColor:
                                            AppColors.SECONDARY_COLOR,
                                        radius: 55,
                                      ),
                                      Positioned(
                                        bottom: 5,
                                        left: 0,
                                        child: CircleAvatar(
                                          backgroundColor:
                                              AppColors.TERNARY_COLOR,
                                          radius: 12,
                                          child: Text(
                                            "1",
                                            style: TextStyle(
                                                color: AppColors.PRIMARY_COLOR),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 15),
                                SizedBox(
                                  child: Column(
                                    children: [
                                      const Text(
                                        "Mahmoud",
                                        style: TextStyle(
                                            color: AppColors.SECONDARY_TEXT,
                                            fontSize: 18),
                                      ),
                                      const SizedBox(height: 5),
                                      const Text(
                                        "Attacker",
                                        style: TextStyle(
                                            color: AppColors.TERNARY_COLOR),
                                      ),
                                      const SizedBox(height: 5),
                                      Row(
                                        children: const [
                                          Text(
                                            "5.0",
                                            style: TextStyle(
                                                color: AppColors.PRIMARY_TEXT),
                                          ),
                                          SizedBox(width: 5),
                                          Icon(
                                            Icons.star,
                                            color: AppColors.SECONDARY_COLOR,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )),
                        Container(
                            padding: const EdgeInsets.only(top: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: SizedBox(
                                    width: 100,
                                    child: Stack(
                                      children: const [
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              'https://www.woolha.com/media/2020/03/eevee.png'),
                                          backgroundColor:
                                              AppColors.SECONDARY_COLOR,
                                          radius: 45,
                                        ),
                                        Positioned(
                                          bottom: 5,
                                          left: 0,
                                          child: CircleAvatar(
                                            backgroundColor:
                                                AppColors.TERNARY_COLOR,
                                            radius: 12,
                                            child: Text(
                                              "2",
                                              style: TextStyle(
                                                  color:
                                                      AppColors.PRIMARY_COLOR),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 15),
                                SizedBox(
                                  child: Column(
                                    children: [
                                      const Text(
                                        "Hasan",
                                        style: TextStyle(
                                            color: AppColors.SECONDARY_TEXT,
                                            fontSize: 18),
                                      ),
                                      const SizedBox(height: 5),
                                      const Text(
                                        "Attacker",
                                        style: TextStyle(
                                            color: AppColors.TERNARY_COLOR),
                                      ),
                                      const SizedBox(height: 5),
                                      Row(
                                        children: const [
                                          Text(
                                            "4.9",
                                            style: TextStyle(
                                                color: AppColors.PRIMARY_TEXT),
                                          ),
                                          SizedBox(width: 5),
                                          Icon(
                                            Icons.star,
                                            color: AppColors.SECONDARY_COLOR,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ],
                    )),

                // List All Players
                Expanded(
                  child: ListView.builder(
                      itemCount: ratings.length,
                      itemBuilder: (context, index) {
                        final rating = ratings[index];

                        return Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              rating.id.toString(),
                              style: const TextStyle(
                                fontSize: 20,
                                color: AppColors.PRIMARY_TEXT,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            CircleAvatar(
                              backgroundImage: NetworkImage(rating.image),
                              backgroundColor: AppColors.SECONDARY_COLOR,
                              radius: 30,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    rating.name,
                                    style: const TextStyle(
                                      fontSize: 22,
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
                            const SizedBox(
                              width: 25,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: AppColors.SECONDARY_COLOR,
                                  ),
                                  Text(
                                    (rating.rating).toString(),
                                    style: const TextStyle(
                                      color: AppColors.TERNARY_COLOR,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
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

        ///Bottom NavBar
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: FloatingActionButton(
            splashColor: AppColors.SECONDARY_COLOR,
            // shape: const StadiumBorder(
            //   side: BorderSide(
            //       color: AppColors.SECONDARY_COLOR, width: 3
            //       )
            // ),
            backgroundColor: AppColors.TERNARY_COLOR,
            onPressed: () {},
            child: const Icon(Icons.add,
                color: AppColors.PRIMARY_COLOR, size: 28), //icon inside button
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        // bottomNavigationBar: BottomNavigationBar(
        //       items: const <BottomNavigationBarItem>[
        //         BottomNavigationBarItem(
        //           icon: Icon(Icons.home),
        //           label: 'Home',
        //         ),
        //         BottomNavigationBarItem(
        //           icon: Icon(Icons.open_in_new_rounded),
        //           label: 'Open Dialog',
        //         ),
        //       ],

        bottomNavigationBar: Container(
          color: AppColors.TERNARY_COLOR,
          child: BottomAppBar(
            color: AppColors.PRIMARY_COLOR,
            shape: const CircularNotchedRectangle(),
            notchMargin: 4,
            clipBehavior: Clip.antiAlias,
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(width: 2.0, color: AppColors.TERNARY_COLOR),
                ),
              ),
              height: 70,
              child: BottomNavigationBar(
                // mainAxisSize: MainAxisSize.max,
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.sports_basketball,
                        size: 28,
                      ),
                      label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_outlined, size: 28),
                      label: 'Create'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.bar_chart, size: 28), label: 'Favorite'),
                ],
                showUnselectedLabels: false,
                unselectedItemColor: AppColors.TERNARY_COLOR,
                selectedItemColor: AppColors.SECONDARY_COLOR,
                currentIndex: _selectedIndex,
                onTap: (int index) {
                  switch (index) {
                    case 0:
                      // only scroll to top when current index is selected.

                      break;
                    case 1:
                      // showModal(context);
                      break;
                  }
                  setState(
                    () {
                      _selectedIndex = index;
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
