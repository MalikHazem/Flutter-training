import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:usersdata/entry.dart';
import 'package:usersdata/salaries.dart';
import 'package:usersdata/user_lest.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return 
      ChangeNotifierProvider(
        create: (_) => UsersLest(),
        child: Entry(),
      );
    
  }
}
