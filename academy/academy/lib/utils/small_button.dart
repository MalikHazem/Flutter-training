import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color buttonColor;
  const SmallButton(
      {super.key,
      required this.text,
      required this.buttonColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      width: 125,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          //  const Color.fromRGBO(255, 255, 255, 0.08),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
              color: textColor, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
