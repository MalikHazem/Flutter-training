import 'package:academy/modules/coaches/screens/coaches.dart';
import 'package:academy/modules/registration/registration_step_1/screens/registration_step_1.dart';
// import 'package:academy/modules/Team_screen/screens/Team_screen.dart';
import 'package:academy/modules/academics/acadimics_switch/academy_switch.dart';
import 'package:academy/modules/drawer/screens/drawer_screen.dart';
import 'package:academy/modules/entry_screen/entry_screen_routes.dart';
import 'package:academy/global_modules/screens/bottom_navigation_bar_switching.dart';
import 'package:academy/modules/academics/search_academic/search_academic_screen.dart';
import 'package:academy/modules/add_academes/screens/add_academy.dart';
import 'package:academy/modules/auth/confirmation/screens/confirmation_screen.dart';
import 'package:academy/modules/intro_screen/intro.dart';
import 'package:academy/modules/auth/add_academy/screen/academy1.dart';
import 'package:academy/modules/auth/add_academy/screen/academy2.dart';
import 'package:academy/modules/auth/forget_password/screens/forgot_password_screen.dart';
import 'package:academy/modules/registration/registration_step_2/screens/registration_step_2.dart';
import 'package:academy/modules/trainees/screens/trainees.dart';
import 'package:academy/modules/welcome_screen/screens/welcome_screen.dart';
import 'package:academy/utils/colors.dart';
import 'package:academy/utils/http-implement/testApi.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'modules/user_info_screen/screens/player_info_screen.dart';
import 'modules/auth/reset_password/screens/reset_password_screen.dart';
import 'modules/auth/login/screens/login_screen.dart';
import 'modules/notifications/parents_notification_screen.dart';
import 'modules/home/screens/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TestApi>(
      create: (context) => TestApi(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: GoogleFonts.sourceSansPro().fontFamily,
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: AppColors.PRIMARY_COLOR,
        ),
        initialRoute: Entry.routeName,
        routes: {
          Entry.routeName: (context) => Entry(),
          AddScreen1.routeName: (BuildContext context) => const AddScreen1(),
          AddScreen2.routeName: (BuildContext context) => const AddScreen2(),
          SearchForAcademic.routeName: (context) => const SearchForAcademic(),
          AcademySwitch.routeName: (context) => const AcademySwitch(),
          ResetPasswordScreen.routeName: (context) => const ResetPasswordScreen(),
          ConfirmationScreen.confirmationRoute: (context) =>
              const ConfirmationScreen(),
          RegistrationStep2.routeName: (BuildContext context) =>
              const RegistrationStep2(),
          Intro.routeName: (BuildContext context) => const Intro(),
          BottomNavigationBarScreens.routeName: (BuildContext context) =>
              BottomNavigationBarScreens(),
          ForgetPassword.ForgetPasswordScreen: (context) =>
              const ForgetPassword(),
          AddAcademy.routeName: (BuildContext context) => const AddAcademy(),
          Home.routeName: (BuildContext context) => const Home(),
          SignInSecreen.routeName: (BuildContext context) =>
              const SignInSecreen(),
          ParentsNotification.routeName: (BuildContext context) =>
              ParentsNotification(),
          RegistrationStep1.routeName: (context) => const RegistrationStep1(),
          PlayerInfoScreen.routeName: (context) => const PlayerInfoScreen(),
          TeamScreen.routeName: (context) => const Team_screen(),
          WelcomeScreen.routeName: (context) => const WelcomeScreen(),
          CustomDrawer.routeName: (context) => CustomDrawer(),
          Coaches.routeName: (context) => const Coaches(),
          Trainees.routeName: (context) => const Trainees(),
        },
      ),
    );
  }
}
  