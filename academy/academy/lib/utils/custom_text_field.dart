import 'package:academy/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String label = "";
  String hint = "";
  bool password = false;
  TextInputType textInputType;
  double borderRadius;
  double height;
  double? width;
  double bottomMargin;
  CustomTextField({
    super.key,
    required this.label,
    required this.hint,
    this.password = false,
    this.textInputType = TextInputType.text,
    this.borderRadius = 35,
    this.height = 60,
    this.width,
    this.bottomMargin = 0,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: bottomMargin),
      width: width ?? MediaQuery.of(context).size.width * 9 / 10.0,
      height: height,
      child: TextFormField(
        keyboardType: textInputType,
        obscureText: password,
        style: const TextStyle(
          color: AppColors.PRIMARY_TEXT,
        ),
        cursorColor: AppColors.PRIMARY_TEXT,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.PRIMARY_TEXT),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.PRIMARY_TEXT),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          labelStyle: const TextStyle(color: AppColors.PRIMARY_TEXT),
          labelText: label,
          hintStyle: const TextStyle(
            color: AppColors.PRIMARY_TEXT,
          ),
          hintText: hint,
          contentPadding: const EdgeInsets.fromLTRB(35, 25, 0, 25),
        ),
      ),
    );
  }
}
