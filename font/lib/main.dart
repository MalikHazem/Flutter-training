import 'package:flutter/material.dart';
import 'package:font/home.dart';
import 'package:font/user.dart';
import 'package:font/users.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: ('Amiri')
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (BuildContext context) => const HomeScreen(),
        Users.routeName: (BuildContext context) => const Users(),
        userScreen.routeName: (BuildContext context) => userScreen(),
      },
    );
  }
}
