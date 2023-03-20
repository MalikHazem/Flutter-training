import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font/users.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/home_route";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text('go to users screen'),
        onPressed: (() {
          Navigator.pushNamed(context, Users.routeName);
        }),
      ),
    );
  }
}