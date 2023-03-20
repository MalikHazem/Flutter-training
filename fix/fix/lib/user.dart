import 'package:fix/color.dart';
import 'package:fix/dt.dart';
import 'package:flutter/material.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override

  // static const users =['users1', 'users2' ,'users3' ,'users4'];

  static const users = [
    {'name': 'users1', 'color': 'blue'},
    {'name': 'users2', 'color': 'red'},
    {'name': 'users3', 'color': 'green'},
    {'name': 'users4', 'color': 'purple'},
  ];

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          DT(),
          ...users.map((item) {
            return Text(item['name'].toString(),
            style: TextStyle(color: blue),
            );
          }),
        ],
      ),
    );
  }
}