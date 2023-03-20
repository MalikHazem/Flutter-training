import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:usersdata/salaries.dart';
import 'package:usersdata/user_lest.dart';
import 'package:usersdata/user_model.dart';
import 'package:usersdata/users.dart';

class Entry extends StatelessWidget {
  const Entry({super.key});

  @override
  Widget build(BuildContext context) {

    var userLest = Provider.of<UsersLest>(context);
    userLest.setUsers();


    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute: Users.routeName,
      routes: {
        Users.routeName: (context) => const Users(),
        Salaries.routeName: (context) => const Salaries(),
      },
      // home: const Scaffold(
      //   body: Users(),
      // )
    );
  }
}