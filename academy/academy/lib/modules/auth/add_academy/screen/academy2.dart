import 'package:academy/utils/colors.dart';
import 'package:academy/utils/custom_text_field.dart';
import 'package:academy/utils/small_button.dart';
import 'package:flutter/material.dart';

class AddScreen2 extends StatelessWidget {
  const AddScreen2({super.key});

  static const routeName = "AddScreen2";

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                backgroundColor: AppColors.PRIMARY_COLOR,
                contentPadding: const EdgeInsets.fromLTRB(40, 90, 40, 30),
                actionsPadding: const EdgeInsets.fromLTRB(20, 15, 20, 70),
                content: RichText(
                    textAlign: TextAlign.left,
                    text: const TextSpan(
                        text: ('welcome '),
                        style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: AppColors.PRIMARY_TEXT),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'User',
                              style: TextStyle(
                                  fontFamily: 'SourceSansPro',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.SECONDARY_COLOR)),
                          TextSpan(
                              text: ' Please enter your mobile to continue',
                              style: TextStyle(
                                  fontFamily: 'SourceSansPro',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.PRIMARY_TEXT))
                        ])),
                actions: <Widget>[
                  CustomTextField(
                      label: "Mobile", hint: "Email ID / Mobile Number"),
                  const SizedBox(height: 50),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SmallButton(
                            text: "Close",
                            buttonColor: Color.fromRGBO(255, 255, 255, 0.08),
                            textColor: AppColors.TERNARY_COLOR),
                        SizedBox(width: 20),
                        SmallButton(
                            text: "Enter",
                            buttonColor: AppColors.SECONDARY_COLOR,
                            textColor: AppColors.PRIMARY_TEXT),
                      ],
                    ),
                  )
                ],
              ),
            ),
        child: const Align(
          alignment: Alignment.center,
          child: Text("Close"),
        ));
  }
}
