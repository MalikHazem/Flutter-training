
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:usersdata/user_lest.dart';
import 'package:usersdata/user_model.dart';

class Salaries extends StatelessWidget {
  static const routeName = "/salary_route";
  const Salaries({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<UsersLest>(builder: (context, model, child) {
      return Scaffold(
      body: ListView(
        children: [
          ...(model.users).map((user) 
          {
            return ListTile(
              leading: CircleAvatar(
                child: Text('${user.salary}'),
              ),
              title: Text(user.name),
            );
          })
        ],
      ),
    );
    }
    );
  }
}