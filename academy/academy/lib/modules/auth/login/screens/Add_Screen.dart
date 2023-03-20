import 'package:academy/utils/colors.dart';
import 'package:flutter/material.dart';

class ShowDialog extends StatelessWidget {
  const ShowDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          backgroundColor: AppColors.PRIMARY_COLOR,
          contentPadding: const EdgeInsets.fromLTRB(20, 90, 20, 0),
          actionsPadding: const EdgeInsets.fromLTRB(20, 30, 20, 70),
          content: RichText(
              textAlign: TextAlign.left,
              text: const TextSpan(
                  text: ('welcome '),
                  style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: AppColors.TERNARY_COLOR),
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
                            color: AppColors.TERNARY_COLOR))
                  ])),
          actions: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              width: MediaQuery.of(context).size.width * 90 / 100,
              child: TextFormField(
                autofocus: true,
                style: const TextStyle(
                  color: AppColors.SECONDARY_COLOR,
                ),
                cursorColor: const Color.fromRGBO(255, 255, 255, 1),
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: AppColors.TERNARY_COLOR,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.SECONDARY_COLOR),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  labelText: 'Mobile',
                  labelStyle: const TextStyle(color: AppColors.TERNARY_COLOR),
                  hintStyle: const TextStyle(
                    color: AppColors.TERNARY_COLOR,
                  ),
                  hintText: 'Email ID / Mobile Number',
                  helperStyle: const TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: AppColors.TERNARY_COLOR),
                  contentPadding: const EdgeInsets.fromLTRB(35, 25, 0, 25),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 125,
                    height: 46,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.TERNARY_LIGHT_COLOR,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24))),
                      onPressed: () => Navigator.pop(context, 'Close'),
                      child: const Text('Close',
                          style: TextStyle(
                            color: AppColors.SECONDARY_COLOR,
                            fontSize: 20,
                            fontFamily: 'SourceSansPro',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.05,
                          )),
                    ),
                  ),
                  const SizedBox(width: 20),
                  SizedBox(
                    width: 125,
                    height: 46,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.SECONDARY_COLOR,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24))),
                      onPressed: () => Navigator.pop(context, 'Enter'),
                      child: const Text('Enter',
                          style: TextStyle(
                            color: AppColors.TERNARY_COLOR,
                            fontSize: 20,
                            fontFamily: 'SourceSansPro',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.05,
                          )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      child: const Text('Click'),
    );
  }
}
