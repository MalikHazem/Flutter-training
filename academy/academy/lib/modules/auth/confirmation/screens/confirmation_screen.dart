import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:academy/utils/colors.dart';
import 'package:academy/utils/styles.dart';
import 'package:flutter/material.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({super.key});

  static const String confirmationRoute = '/confirmation';
  final String mobileNumber = "+970 123 456 789";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.PRIMARY_COLOR,
        body: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: AppColors.SECONDARY_COLOR, width: 3),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(200),
                    ),
                  ),
                  child: Image.asset("assets/images/approve.png"),
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  children: const [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Please",
                        style: TextStyle(
                            color: AppColors.PRIMARY_TEXT,
                            fontWeight: AppStyles.BOLD_FONT_WEIGHT,
                            fontSize: 40),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Check Your Phone!",
                        style: TextStyle(
                            color: AppColors.PRIMARY_TEXT,
                            fontWeight: AppStyles.BOLD_FONT_WEIGHT,
                            fontSize: 40),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    const SizedBox(
                      width: double.infinity,
                      child: FittedBox(
                        child: Text(
                          "We have sent the verification code to your mobile number:",
                          style: TextStyle(
                            color: AppColors.PRIMARY_TEXT,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        mobileNumber,
                        style: const TextStyle(
                          color: AppColors.PRIMARY_TEXT,
                          fontWeight: AppStyles.BOLD_FONT_WEIGHT,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    VerificationCode(
                      onCompleted: (value) {},
                      onEditing: (value) {},
                      textStyle: const TextStyle(
                        fontSize: 20.0,
                        color: AppColors.PRIMARY_TEXT,
                      ),
                      keyboardType: TextInputType.number,
                      underlineColor: AppColors.SECONDARY_COLOR,
                      fullBorder: true,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      cursorColor: AppColors.SECONDARY_COLOR,
                    ),
                    Flexible(
                      flex: 2,
                      child: TextButton(
                        onPressed: (() {}),
                        child: const FittedBox(
                          child: Text(
                            "Didn’t Receive a Code?",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: AppColors.PRIMARY_TEXT,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 2,
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: (() {}),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.SECONDARY_COLOR,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: const Text(
                      "NEXT",
                      style: TextStyle(
                        fontWeight: AppStyles.BOLD_FONT_WEIGHT,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const FittedBox(
                      child: Text(
                        "Did you enter wrong number?",
                        style: TextStyle(
                          color: AppColors.PRIMARY_TEXT,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: (() {}),
                      child: const FittedBox(
                        child: Text(
                          "Back",
                          style: TextStyle(
                            color: AppColors.PRIMARY_TEXT,
                            fontWeight: AppStyles.BOLD_FONT_WEIGHT,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
