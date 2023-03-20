import 'package:flutter/material.dart';
import 'package:font/user.dart';
import 'package:font/user_info.dart';

class Users extends StatelessWidget {
  static const routeName = "/users_route";
  const Users({super.key});

  @override
  Widget build(BuildContext context) {
    void goToUserScreen(UserInfo user)
    {
      Navigator.pushNamed(context, 
      userScreen.routeName, arguments: user);
    }
    var users = List.generate(25, (index)
    {
      return Card(
        child: ListTile(
          leading: CircleAvatar(child: Text((index + 1).toString())),
          title: Text('user ${index+1}'),
          trailing: ElevatedButton(
            onPressed: () {
              UserInfo user = UserInfo(index, 'user ${index+1}');
              goToUserScreen(user);
            },
            child: Icon
            (
              Icons.chevron_right,
              size: 20,
            ),
          ),
        ),
      );
    });
    return SafeArea(
      child: Container(
        color: Colors.grey,
        child: ListView(
          children: [...users],
        ),
      )
      );
  }
}