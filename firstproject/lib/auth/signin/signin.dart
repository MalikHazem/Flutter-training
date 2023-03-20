import 'package:flutter/material.dart';
import 'package:firstproject/auth/signin/password_field.dart';
import './email_field.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});
  void clickMe(source) {
    print("clicked from " + source.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.black87,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 30),
            child: const Center(
              child: Text(
                "Sign In",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          EmailField(),
          SizedBox(height: 20),
          PasswordField(),
          SizedBox(height: 30),
          Row(
            children: [
              Checkbox(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),
                side: MaterialStateBorderSide.resolveWith(
                  (states) => BorderSide(width: 1.0, color: Colors.white70),
                ),
                checkColor: Colors.white70,
                fillColor: MaterialStateProperty.all(Colors.transparent),
                value: true,
                onChanged: (bool? value) {},
              ),
              SizedBox(width: 10),
              Text(
                "Remember me",
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Sign In",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not registed yet?",
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Create an account",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
