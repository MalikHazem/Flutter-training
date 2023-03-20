import 'package:academy/modules/auth/login/models/social_media_accounts.dart';
import 'package:academy/utils/colors.dart';
import 'package:academy/utils/custom_button.dart';
import 'package:academy/utils/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignInSecreen extends StatelessWidget {
  const SignInSecreen({super.key});

  static const routeName = "/SignIn";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 70,
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
                  IconButton(
                    onPressed: () {},
                    iconSize: 32,
                    icon: Image.asset('assets/images/basketball.png'),
                  ),
                  IconButton(
                    onPressed: () {},
                    iconSize: 37,
                    icon: const Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    iconSize: 32,
                    icon: Image.asset('assets/images/next.png'),
                  ),
                ],
              ),
            ],
          ),
        ),
        backgroundColor: AppColors.PRIMARY_COLOR,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "SIGN",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "IN",
                          style: TextStyle(
                              color: AppColors.SECONDARY_COLOR,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 10,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 70,
                            width: MediaQuery.of(context).size.width - 60,
                            child: const Text(
                                'Let we know you, please sign in with any existing account by',
                                style: TextStyle(
                                  color: AppColors.PRIMARY_TEXT,
                                  fontSize: 20,
                                )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: SocialMediaAccounts(),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.04,
                      width: double.infinity,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        const Divider(
                          color: AppColors.PRIMARY_TEXT,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.39,
                          color: AppColors.PRIMARY_COLOR,
                          child: const Center(
                            child: Text(
                              'Or login with',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.07,
                      width: double.infinity,
                    ),
                    CustomTextField(
                        label: "Enter Your Mobile",
                        hint: "Mobile",
                        textInputType: TextInputType.number,
                        password: false),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.07,
                      width: double.infinity,
                    ),
                    CustomTextField(
                        label: "Enter Your Password",
                        hint: "Password",
                        textInputType: TextInputType.visiblePassword,
                        password: true),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.07,
                      width: double.infinity,
                    ),
                    CustomButton(text: "Login"),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: double.infinity,
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text('Forget Password?',
                            style: TextStyle(
                              color: AppColors.PRIMARY_TEXT,
                              fontSize: 20,
                            )),
                        const Text(' Reset',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                      width: double.infinity,
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          'Don\'t have an account?',
                          style: TextStyle(
                            color: AppColors.PRIMARY_TEXT,
                            fontSize: 20,
                          ),
                        ),
                        const Text(
                          ' Register',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
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
