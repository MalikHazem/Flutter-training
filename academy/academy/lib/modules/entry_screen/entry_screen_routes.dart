import 'package:academy/modules/Team_screen/screens/Team_screen.dart';
import 'package:academy/modules/academics/acadimics_switch/academy_switch.dart';
import 'package:academy/modules/coaches/screens/coaches.dart';
import 'package:academy/modules/drawer/screens/drawer_screen.dart';
import 'package:academy/modules/intro_screen/intro.dart';
import 'package:academy/global_modules/screens/bottom_navigation_bar_switching.dart';
import 'package:academy/modules/registration/registration_step_1/screens/registration_step_1.dart';
import 'package:academy/modules/registration/registration_step_2/screens/registration_step_2.dart';
import 'package:academy/modules/trainees/screens/trainees.dart';
import 'package:academy/modules/user_info_screen/screens/player_info_screen.dart';
import 'package:academy/modules/add_academes/screens/add_academy.dart';
import 'package:academy/modules/auth/add_academy/screen/academy1.dart';
import 'package:academy/modules/auth/add_academy/screen/academy2.dart';
import 'package:academy/modules/auth/confirmation/screens/confirmation_screen.dart';
import 'package:academy/modules/auth/forget_password/screens/forgot_password_screen.dart';
import 'package:academy/modules/auth/login/screens/login_screen.dart';
import 'package:academy/modules/auth/reset_password/screens/reset_password_screen.dart';
import 'package:academy/modules/home/screens/home.dart';
import 'package:academy/modules/welcome_screen/screens/welcome_screen.dart';
import 'package:academy/utils/colors.dart';
import 'package:academy/utils/http-implement/testApi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:provider/provider.dart';
import '../notifications/parents_notification_screen.dart';

class Entry extends StatefulWidget {
  static const routeName = '/Entry';

  @override
  State<Entry> createState() => _EntryState();
}

class _EntryState extends State<Entry> {
  
  var routList = [
    {"title": "Home", "routes": Home.routeName},
    {"title": "Splash", "routes": Intro.routeName},
    {"title": "SignIN", "routes": SignInSecreen.routeName},
    {"title": "registration_step_1", "routes": RegistrationStep1.routeName},
    {"title": "registration_step_2", "routes": RegistrationStep2.routeName},
    {"title": "Forgot", "routes": ForgetPassword.ForgetPasswordScreen},
    {"title": "Verify", "routes": ConfirmationScreen.confirmationRoute},
    {"title": "Rest", "routes": ResetPasswordScreen.routeName},
    {"title": "+Acad.1", "routes": AddAcademy.routeName},
    {"title": "+Acad.2", "routes": AddScreen1.routeName},
    {"title": "+Acad.3", "routes": AddScreen2.routeName},
    {
      "title": "profile-page-history",
      "routes": BottomNavigationBarScreens.routeName,
    },
    {"title": "Player Info", "routes": PlayerInfoScreen.routeName},
    {"title": "Parents Notification", "routes": ParentsNotification.routeName},
    {"title": "TeamAScreen", "routes": Team_screen.routeName},
    {"title": "WelcomeScreen", "routes": WelcomeScreen.routeName},
    {"title": "CustomDrawer", "routes": CustomDrawer.routeName},
    {"title": "Coaches", "routes": Coaches.routeName},
    {"title": "Trainees", "routes": Trainees.routeName},
    {"title": "AcademySwitch", "routes": AcademySwitch.routeName},
  ];

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    int columnCount = 3;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.SECONDARY_COLOR,
        title: const Text(
          "Routs Screen",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: AnimationLimiter(
        child: GridView.count(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            padding: EdgeInsets.all(_w / 60),
            crossAxisCount: columnCount,
            children: [
              ...routList.map((screen) {
                return RouteButton(
                    tag: screen["title"].toString(),
                    routeScreen: screen["routes"].toString());
              })
            ]),
      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  String tag = "";
  String routeScreen;
  RouteButton({super.key, required this.tag, required this.routeScreen});

  @override
  Widget build(BuildContext context) {
    onPresseGO() {
      Navigator.pushNamed(context, routeScreen);
    }

    return Container(
      width: 120,
      height: 120,
      padding: EdgeInsets.all(5),
      child: ElevatedButton(
          onPressed: onPresseGO,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.TERNARY_LIGHT_COLOR,
            padding: const EdgeInsets.all(5),
            shape: RoundedRectangleBorder(
                //to set border radius to button
                borderRadius: BorderRadius.circular(10)),
          ),
          child: Text(
            tag,
            style: const TextStyle(color: AppColors.PRIMARY_TEXT, fontSize: 24),
          )),
    );
  }
}
