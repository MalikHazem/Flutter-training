import 'package:academy/utils/colors.dart' show AppColors;
import 'package:academy/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../utils/custom_button.dart';
import '../../../../utils/custom_text_field.dart';

class ResetPasswordScreen extends StatelessWidget {
  static const String routeName = '/resetpassword_screen';

  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Builder(builder: (context) {
      return SafeArea(
        child: LayoutBuilder(
            builder: (BuildContext ctx, BoxConstraints constraints) {
          return Scaffold(
            backgroundColor: AppColors.PRIMARY_COLOR,
            body: SingleChildScrollView(
                child: Column(
              children: [
                const SizedBox(height: 30),
                SizedBox(
                  height: height / 3,
                  child: SvgPicture.asset("assets/images/reset.svg"),
                ),
                const SizedBox(
                  height: 22,
                ),
                const Text(
                  "Reset Password",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: AppColors.TERNARY_COLOR,
                  ),
                ),
                const SizedBox(
                  height: 22,
                ),
                Column(
                  children: [
                    AppStyles(text: "Welcome Back. please enter the"),
                    AppStyles(text: "sitable new password you want.")
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 90 / 100,
                  child: Column(
                    children: [
                      CustomTextField(
                        label: 'Password',
                        hint: 'Enter Password',
                        password: true,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      CustomTextField(
                        label: 'Confirm Password',
                        hint: 'Enter Password',
                        password: true,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 65,
                        child: CustomButton(
                          text: 'Submit',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 90 / 100,
                  margin: EdgeInsets.symmetric(
                      horizontal:
                          MediaQuery.of(context).size.width * 2.5 / 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Didn't won't change password?",
                        style: TextStyle(
                            fontSize: 17, color: AppColors.TERNARY_COLOR),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: AppStyles(text: 'Cancel'),
                      )
                    ],
                  ),
                ),
              ],
            )),
          );
        }),
      );
    });
  }
}
