import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import 'package:academy/modules/welcome_screen/screens/welcome_screen.dart';

class Intro extends StatelessWidget {
  static const routeName = "/Intro_route";
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: AppColors.PRIMARY_COLOR,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 80),
            Container(
              width: width * 0.85,
              height: height * 0.45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.PRIMARY_TEXT.withOpacity(0.05),
                    spreadRadius: 0.5,
                    blurRadius: 40,
                    offset: const Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FittedBox(
                      fit: BoxFit.contain,
                      child: Image.asset(
                        "assets/images/image.png",
                        width: width * 0.89,
                        height: height * 0.15,
                      )),
                  const Text(
                    "Your Favorite Team in one place",
                    style:
                        TextStyle(color: AppColors.TERNARY_COLOR, fontSize: 18),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Easily view training and",
                    style: TextStyle(
                      color: AppColors.TERNARY_COLOR,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "live matches in one place",
                    style: TextStyle(
                      color: AppColors.TERNARY_COLOR,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WelcomeScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(0, 18, 0, 18),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    backgroundColor: AppColors.SECONDARY_COLOR,
                  ),
                  child: const Text("Get Started",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
            ),
          ],
        ),
      ),
    );
  }
}
