import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:usersdata/salaries.dart';
import 'package:usersdata/user_lest.dart';
import 'package:usersdata/user_model.dart';
import 'package:usersdata/user_salary.dart';

class Users extends StatelessWidget {
  static const routeName = "/user_route";
  const Users({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<UsersLest>(builder: (context, model, child) {
      return Scaffold(
      body: Column(
        children: [
          Container(
            height: 80,
            child: ElevatedButton(
                    child: Text('go back'),
                    onPressed: (() {
                      Navigator.pushNamed(context, Salaries.routeName);
                    }
                    ),
                  ),
          ),
          Expanded(
            child: ListView(
              children: [
                ...(model.users as List<UserModel>).map((user) 
                {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(user.img),
                      // child: NetworkImage(user.img),
                    ),
                    title: Text(user.name),
                    subtitle: Text("${user.age}"),
                    trailing: UserSalary(user: user,)
                  );
                })
              ],
            ),
          ),
        ],
      ),
    );
    });
  }
}