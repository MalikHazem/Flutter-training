import 'package:add/row.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class Home extends StatelessWidget {
  double appbarheight;
  Home({super.key, required this.appbarheight});
  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    double height = mediaquery.size.height;
    double width = mediaquery.size.width;
    double statebar = MediaQueryData.fromWindow(window).padding.top;
    height = height - appbarheight - statebar;
    double taxtScale = mediaquery.textScaleFactor;
    return Container(
      child: Column(
        children: [
          Container(
            height: (height * 0.7),
            child: const Rowdesign(),
          ),
          Container(
            height: (height * 0.3),
            width: width * 0.9,
            color: Color.fromARGB(255, 153, 115, 219),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Row(
                children: [
              Text('text', style: TextStyle(fontSize: 50 * taxtScale),),
              SizedBox(width: 15,),
              Text('text', style: TextStyle(fontSize: 50 * taxtScale),),
              SizedBox(width: 15,),
              Text('text', style: TextStyle(fontSize: 50 * taxtScale),),
                ],
              ),
            ),
            // style: TextStyle(fontSize: 20 * taxtScale * (width * 0.1),),)
          )
        ],
      ),
    );
  }
}