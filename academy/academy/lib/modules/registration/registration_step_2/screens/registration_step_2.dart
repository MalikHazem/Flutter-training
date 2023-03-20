import 'package:academy/utils/colors.dart';
import 'package:academy/utils/custom_button.dart';
import 'package:academy/utils/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/image/gf_image_overlay.dart';

class RegistrationStep2 extends StatelessWidget {
  const RegistrationStep2({super.key});
  static const routeName = "/Registeration_step2";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.PRIMARY_COLOR,
        leading: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.PRIMARY_COLOR,
            ),
            onPressed: () => {Navigator.pop(context)},
            child: const Icon(Icons.arrow_back_ios)),
        title: Row(
          children: const [
            Text(
                style: TextStyle(
                    color: AppColors.TERNARY_COLOR,
                    fontWeight: FontWeight.w900,
                    fontSize: 30),
                "Hi "),
            Text(
                style: TextStyle(
                    color: AppColors.SECONDARY_COLOR,
                    fontWeight: FontWeight.w900,
                    fontSize: 30),
                "User !")
          ],
        ),
      ),
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(10),
        color: AppColors.PRIMARY_COLOR,
        child: ScrollConfiguration(
          behavior: const MaterialScrollBehavior().copyWith(overscroll: false),
          child: LayoutBuilder(
            builder: (context, constraints) {
              var border2 = Border.all(
                color: AppColors.PRIMARY_COLOR,
                width: 4.0,
              );
              return SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                  child: IntrinsicHeight(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                  style: TextStyle(
                                      color: AppColors.TERNARY_COLOR,
                                      fontSize: 20),
                                  "let we know you, please enter your"),
                              Text(
                                  style: TextStyle(
                                      color: AppColors.TERNARY_COLOR,
                                      fontSize: 20),
                                  "image, identfication and email vaild."),
                              SizedBox(
                                height: 30,
                              )
                            ],
                          ),
                          GFImageOverlay(
                              color: AppColors.TERNARY_COLOR,
                              height: 220,
                              width: 220,
                              boxFit: BoxFit.fill,
                              image: const AssetImage('assets/images/user.png'),
                              shape: BoxShape.circle,
                              alignment: const Alignment(1.2, 0.8),
                              child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(50.0)),
                                    border: border2,
                                  ),
                                  height: 80,
                                  width: 80,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                      backgroundColor:
                                          AppColors.SECONDARY_COLOR,
                                    ),
                                    child: const Icon(
                                        color: AppColors.PRIMARY_COLOR,
                                        size: 40,
                                        Icons.add),
                                  ))),
                          Container(
                            margin: const EdgeInsets.all(30),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomTextField(
                                    label: "Email", hint: "Enter your Email"),
                                const SizedBox(
                                  height: 20,
                                ),
                                CustomTextField(
                                    label: "ID", hint: "Enter your ID"),
                                const SizedBox(
                                  height: 20,
                                ),
                                CustomButton(text: "CREATE NEW ACCOUNT")
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                  style: TextStyle(
                                      color: AppColors.TERNARY_COLOR,
                                      fontSize: 18),
                                  "you don't want put it now ?"),
                              TextButton(
                                child: const Text(
                                  'skip',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: AppColors.TERNARY_COLOR,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                onPressed: () {
                                  //signup screen
                                },
                              )
                            ],
                          ),
                        ]),
                  ),
                ),
              );
            },
          ),
        ),
      )),
    );
  }
}
