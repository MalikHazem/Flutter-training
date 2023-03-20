import 'package:academy/modules/registration/registration_step_1/models/social_icons.dart';
import 'package:academy/utils/colors.dart';
import 'package:academy/utils/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:academy/utils/custom_text_field.dart';

class RegistrationStep1 extends StatelessWidget {
  const RegistrationStep1({Key? key}) : super(key: key);
  static const String routeName = "/registration_step_1";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03448),
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: AppColors.PRIMARY_COLOR,
          ),
          child: ListView(
            children: [
              Row(
                children: const [
                  Text(
                    "SIGN",
                    style: TextStyle(
                        color: AppColors.TERNARY_COLOR,
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  ),
                  Text(
                    "UP",
                    style: TextStyle(
                        color: AppColors.SECONDARY_COLOR,
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Text(
                    "let we know you, please enter your\nimage, identification and email valid",
                    style:
                        TextStyle(color: AppColors.PRIMARY_TEXT, fontSize: 20),
                    maxLines: 2,
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.040),
              SocialIcons(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.040),
              Row(children: const [
                Expanded(child: Divider(color: AppColors.TERNARY_COLOR)),
                Text(
                  " OR Sign Up with ",
                  style: TextStyle(color: AppColors.PRIMARY_TEXT, fontSize: 24),
                ),
                Expanded(
                    child: Divider(
                  color: AppColors.TERNARY_COLOR,
                )),
              ]),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.040,
              ),
              CustomTextField(
                label: "Name",
                hint: "Enter Your Full Name",
                password: false,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.040),
              CustomTextField(
                label: "Mobile Number",
                hint: "Enter Your Mobile Number",
                password: false,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.040),
              CustomTextField(
                  label: "Password",
                  hint: "Enter Your Password",
                  password: true),
              SizedBox(height: MediaQuery.of(context).size.height * 0.040),
              CustomButton(text: "KEEP GOING"),
              SizedBox(height: MediaQuery.of(context).size.height * 0.040),
              Row(
                children: const [
                  Text(
                    " Already have an account? ",
                    style:
                        TextStyle(color: AppColors.TERNARY_COLOR, fontSize: 20),
                  ),
                  InkWell(
                    onTap: null,
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          color: AppColors.PRIMARY_TEXT, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ],
            /////
          ),
        ),
      ),
    );
  }
}
