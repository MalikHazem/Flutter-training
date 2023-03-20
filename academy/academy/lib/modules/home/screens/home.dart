import 'package:academy/global_modules/screens/bottom_navigation_bar_switching.dart';
import 'package:academy/modules/academics/search_academic/search_academic_screen.dart';
import 'package:academy/modules/coaches/screens/coaches.dart';
import 'package:academy/modules/home/models/square_button.dart';
import 'package:academy/modules/home/models/custom_card.dart';
import 'package:academy/modules/home/models/home_screen_app_bar.dart';
import 'package:academy/modules/home/models/title_text.dart';
import 'package:academy/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/colors.dart';

class Home extends StatefulWidget {
  static const routeName = '/home_route';

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<IconData> iconList = [
    //list of icons that required by animated navigation bar.
    Icons.network_locked_outlined,
    Icons.home,
    Icons.interests,
    Icons.person
  ];

  List titlesList = [
    "Trainer",
    "Children",
    "Teams",
  ];

  int activeIndex = 1;

//   GradientIcon(
//   SvgPicture.asset('assets/icons/football.svg'),
// )

  SvgPicture Trainers = SvgPicture.asset('assets/icons/Trainers.svg');
  SvgPicture Childrens = SvgPicture.asset('assets/icons/Children.svg');
  SvgPicture Teams = SvgPicture.asset('assets/icons/Teams.svg');
  SvgPicture iconFootball = SvgPicture.asset('assets/icons/football.svg');
  SvgPicture iconHome = SvgPicture.asset(
    'assets/icons/Home.svg',
    color: AppColors.SECONDARY_COLOR,
  );
  SvgPicture iconRating = SvgPicture.asset('assets/icons/Rating.svg');
  SvgPicture iconProfile = SvgPicture.asset('assets/icons/Profile.svg');

  void _onTap(int index) {
    setState(() {
      activeIndex = index;
      if (activeIndex == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SearchForAcademic()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: const HomeScreenAppBar(),
      body: Center(
        child: SizedBox(
          width: width * 9 / 10,
          child: Column(
            children: [
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(3, (index) {
                    return SquareButton(
                      title: titlesList[index],
                      width: width * 8 / 30.0,
                      icon: iconList[index],
                      onTap: () {  },
                    );
                  })
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                  height: 105,
                  child: GridView.count(
                      crossAxisCount: 3,
                      crossAxisSpacing: 2.0,
                      mainAxisSpacing: 2.0,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        Center(
                            child: Card(
                          color: AppColors.SECONDARY_COLOR,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Coaches()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.SECONDARY_COLOR,
                              padding: const EdgeInsets.all(0),
                            ),
                            child: Center(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: width * 0.028,
                                    ),
                                    Expanded(flex: 0, child: Trainers),
                                    const Text(
                                      'Trainers',
                                      style: TextStyle(
                                          color: AppColors.PRIMARY_TEXT,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ]),
                            ),
                          ),
                        )),
                        Center(
                            child: Card(
                          color: AppColors.SECONDARY_COLOR,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.SECONDARY_COLOR,
                              padding: const EdgeInsets.all(0),
                            ),
                            child: Center(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: width * 0.028,
                                    ),
                                    Expanded(flex: 0, child: Childrens),
                                    const Text(
                                      'Children',
                                      style: TextStyle(
                                          color: AppColors.PRIMARY_TEXT,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ]),
                            ),
                          ),
                        )),
                        Center(
                            child: Card(
                          color: AppColors.SECONDARY_COLOR,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.SECONDARY_COLOR,
                              padding: const EdgeInsets.all(0),
                            ),
                            child: Center(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: width * 0.050,
                                    ),
                                    Expanded(flex: 0, child: Teams),
                                    const Text(
                                      'Teams',
                                      style: TextStyle(
                                          color: AppColors.PRIMARY_TEXT,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ]),
                            ),
                          ),
                        ))
                      ])),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  TitleText(title: "Seasons 2022"),
                  TextButton(
                    onPressed: null,
                    child: Text(
                      'More',
                      style: TextStyle(
                        color: AppColors.TERNARY_COLOR,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return CustomCard(
                        width: width,
                        passed: 70,
                        height: height,
                        traningName: 'Traning Name',
                        groupNumber: 32,
                        units: 4,
                        hours: 120);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
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
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SearchForAcademic()),
                        );
                      },
                      iconSize: 30,
                      icon: iconFootball,
                    ),
                    const Text(
                      'Academies',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      iconSize: 30,
                      icon: iconHome,
                    ),
                    const Text(
                      'Home',
                      style: TextStyle(
                        color: AppColors.SECONDARY_COLOR,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BottomNavigationBarScreens()),
                        );
                      },
                      iconSize: 30,
                      icon: iconRating,
                    ),
                    const Text(
                      'Rating',
                      style: TextStyle(
                        color: AppColors.PRIMARY_TEXT,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BottomNavigationBarScreens()),
                        );
                      },
                      iconSize: 30,
                      icon: iconProfile,
                    ),
                    const Text(
                      'Profile',
                      style: TextStyle(
                        color: AppColors.PRIMARY_TEXT,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: AnimatedBottomNavigationBar(
      //   //navigation bar
      //   icons: iconList,
      //   activeIndex: activeIndex,
      //   gapLocation: GapLocation.center,
      //   notchSmoothness: NotchSmoothness.softEdge,
      //   onTap: _onTap,
      //   iconSize: 35,
      //   height: 60,
      //   activeColor: AppColors.SECONDARY_COLOR,
      //   inactiveColor: AppColors.TERNARY_COLOR.withOpacity(0.5),
      //   backgroundColor: AppColors.PRIMARY_COLOR.withOpacity(0),
      //   borderColor: AppColors.TERNARY_COLOR.withOpacity(0.5),
      // ),
    );
  }
}
