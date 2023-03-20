import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:users/users.dart';

class AllUsers extends StatelessWidget {
  const AllUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("build users consumer");
    return Expanded(
      child: Consumer<Users>(builder: (context, model, child) {
        print("build users consumer ");
        return ListView(
          children: [
            ElevatedButton(
              onPressed: () {
                model.addNewUser();
              },
              child: Text("add user"),
            ),
            ...model.users.map((user) {
              return Text(
                user['firstName'],
                style: TextStyle(fontSize: 40),
              );
            })
          ],
        );
      }),
    );
  }
}
