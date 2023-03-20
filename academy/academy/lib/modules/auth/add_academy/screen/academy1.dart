import 'package:academy/utils/colors.dart';
import 'package:academy/utils/small_button.dart';
import 'package:flutter/material.dart';

class AddScreen1 extends StatelessWidget {
  const AddScreen1({super.key});

  static const routeName = "AddScreen1";

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          backgroundColor: AppColors.PRIMARY_COLOR,
          contentPadding: const EdgeInsets.fromLTRB(50, 80, 50, 50),
          actionsPadding: const EdgeInsets.fromLTRB(10, 20, 10, 80),
          content: const Text(
            'Thank you for creating an academy, the academy will be added when it is approved by the administrator',
            style: TextStyle(
              color: AppColors.TERNARY_COLOR,
              fontFamily: 'SourceSansPro',
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
          actions: <Widget>[
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
            ),
          ],
        ),
      ),
      child: const Align(
        alignment: Alignment.center,
        child: Text("Click"),
      ),
    );
  }
}
