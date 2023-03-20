import 'package:flutter/material.dart';
import 'package:widget/baseline.dart';
import 'package:widget/draggable.dart';
import 'package:widget/gridView.dart';
import 'package:widget/viewpage.dart';

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
      ),
      initialRoute: ViewPage.routeName,
      routes: {
        ViewPage.routeName: (BuildContext context) => const ViewPage(),
        BaselinePage.routeName: (BuildContext context) => const BaselinePage(),
        GridViewPage.routeName: (BuildContext context) => const GridViewPage(),
        draggablePage.routeName: (BuildContext context) => const draggablePage(),
      },
    );
  }
}