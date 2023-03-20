import 'package:flutter/material.dart';
import 'package:firstproject/dashboard/users.dart';
import 'package:firstproject/dashboard/users2.dart';
import 'package:firstproject/dashboard/users3.dart';
import 'package:firstproject/dashboard/t1.dart';

void main() {
  runApp(const MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // var num = 0;

  // addnum(x)
  // {
  //   x++;
  // }
  var message = [
    {"subject": "Hello", "date": "11:12PM"},
  ];

  addusers(subject, date)
  {
    message.add({"subject": subject, "date": date});
  }
  
  bool isLogin = false;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // isLogin ? Users() : SignIn(),
      // home:  Users2(),
      // home: const Users3(), 
      // home: Users(message, addusers),
      home: isLogin ? Users(message, addusers) : Users2(),
      // home: T1(num, addnum),
    );
  }
}
