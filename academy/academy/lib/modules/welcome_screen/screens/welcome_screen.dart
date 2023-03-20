import 'package:academy/modules/academics/search_academic/search_academic_screen.dart';
import 'package:academy/modules/auth/login/screens/login_screen.dart';
import 'package:academy/modules/registration/registration_step_1/screens/registration_step_1.dart';
import 'package:academy/utils/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
  static const routeName = '/welcome_screen';
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List images = [
    'assets/images/1.jpg',
    'assets/images/1.jpg',
    'assets/images/1.jpg',
    'assets/images/1.jpg',
    'assets/images/1.jpg'
  ];

  var iconFootball = SvgPicture.asset('assets/icons/football.svg');
  var iconHome = SvgPicture.asset(
    'assets/icons/Home.svg',
    color: AppColors.SECONDARY_COLOR,
  );
  var iconSignIn = SvgPicture.asset('assets/icons/signIn.svg');

  int activeIndex = 0;

  CarouselController controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
            color: AppColors.PRIMARY_COLOR,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //logo
                  Padding(
                    padding: const EdgeInsets.only(top: 100, bottom: 30),
                    child: SizedBox(
                        width: 288,
                        height: 90,
                        child: Image.asset('assets/images/logo.png')),
                  ),
                  //image slider
                  Padding(
                    padding: const EdgeInsets.only(left: 2, right: 2),
                    child: CarouselSlider(
                      carouselController: controller,
                      options: CarouselOptions(
                          onPageChanged: (index, reason) {
                            setState(() {
                              activeIndex = index;
                            });
                          },
                          initialPage: activeIndex,
                          height: 240.0,
                          aspectRatio: 250 / 200,
                          viewportFraction: 0.6,
                          autoPlay: true,
                          enlargeCenterPage: true),
                      items: images.map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.asset(
                                    i,
                                    fit: BoxFit.cover,
                                  ),
                                ));
                          },
                        );
                      }).toList(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            controller.previousPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn);
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: AppColors.PRIMARY_COLOR,
                              size: 20,
                            ),
                          ),
                        ),
                        ...images.asMap().entries.map((e) {
                          return RotationTransition(
                            turns: const AlwaysStoppedAnimation(45 / 360),
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              height: 16,
                              width: 16,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.SECONDARY_COLOR
                                        .withOpacity(0.9),
                                    width: 3,
                                    strokeAlign: StrokeAlign.outside),
                                color: e.key == activeIndex
                                    ? AppColors.SECONDARY_COLOR
                                    : Colors.white.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(7),
                              ),
                            ),
                          );
                        }),
                        InkWell(
                          onTap: () {
                            controller.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn);
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            child: const Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.PRIMARY_COLOR,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      width: 300,
                      child: Column(
                        children: [
                          Row(children: const [
                            Text(
                              'welcome ',
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.left,
                              textScaleFactor: 1.3,
                            ),
                            Text(
                              ' Captain',
                              style:
                                  TextStyle(color: AppColors.SECONDARY_COLOR),
                              textAlign: TextAlign.left,
                              textScaleFactor: 1.3,
                            ),
                            Text(
                              ', Please sign in ',
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.left,
                              textScaleFactor: 1.3,
                            ),
                          ]),
                          Row(
                            children: const [
                              Text(
                                'to see more details ...',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.left,
                                textScaleFactor: 1.3,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Don\'t have an acount ? ',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          textAlign: TextAlign.left,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "YourRoute");
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                      const RegistrationStep1()),
                                );
                              },
                              child: const Text(
                                'Register',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.TERNARY_COLOR,
                                  fontSize: 18,
                                ),
                              ),
                            )
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Container(
            height: 90,
            color: AppColors.PRIMARY_COLOR,
            child: Column(
              children: [
                const Divider(
                  color: Colors.white,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                      const SearchForAcademic()),
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
                                  builder: (context) => const SignInSecreen()),
                            );
                          },
                          iconSize: 30,
                          icon: iconSignIn,
                        ),
                        const Text(
                          'Signin',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
