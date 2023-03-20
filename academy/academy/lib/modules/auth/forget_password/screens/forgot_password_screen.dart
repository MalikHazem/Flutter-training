import 'package:academy/utils/colors.dart';
import 'package:academy/utils/custom_button.dart';
import 'package:academy/utils/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgetPassword extends StatelessWidget {
  static const ForgetPasswordScreen = '/ForgetPassword';
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    onPresseGO() {
      Navigator.pushNamed(context, '');
    }

    onPresseBack() {
      Navigator.pop(context);
    }

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SizedBox(
            width: 0.9 * width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SvgPicture.asset(
                    width: 0.9 * width,
                    'assets/icons/forgotPassword.svg',
                  ),
                  Row(
                    children: const [
                      Text(
                        "Forgot",
                        style: TextStyle(
                            color: AppColors.TERNARY_COLOR, fontSize: 40),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "Password?",
                        style: TextStyle(
                            color: AppColors.TERNARY_COLOR, fontSize: 40),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Don't worry! it happens, please enter the address associated with your account.",
                    style:
                        TextStyle(color: AppColors.TERNARY_COLOR, fontSize: 20),
                  ),
                  const SizedBox(height: 30),
                  CustomTextField(
                      label: "Email or mobile",
                      hint: "Email ID / Mobile Number"),
                  const SizedBox(height: 30),
                  CustomButton(text: "Submit"),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Did you remember the password?",
                        style: TextStyle(
                            fontSize: 17, color: AppColors.TERNARY_COLOR),
                      ),
                      TextButton(
                        onPressed: onPresseBack,
                        child: const Text(
                          "Back",
                          style: TextStyle(
                            fontSize: 17,
                            color: AppColors.TERNARY_COLOR,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
