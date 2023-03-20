// ignore_for_file: duplicate_ignore

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FormSign extends StatelessWidget
{
    FormSign({super.key});
    
    var users = [{'name': 'Malik', 'age': 20},
    {'name': 'Hazem', 'age': 24},
    {'name': 'Mohamad', 'age': 22},
    ];

      @override
      // ignore: prefer_const_constructors, prefer_const_constructors
      Widget build(BuildContext context) {
      // ignore: prefer_const_constructors
      return Container(
        height: 150,
        color: Colors.red,
        child: ListView(
        children: [
          ...users.map((item){
            return 
            Text(item['name'].toString(), style: const TextStyle(color: Colors.white),);
            // ignore: dead_code
            Text(item['name'].toString(), style: const TextStyle(color: Colors.white),);
          })
        ],
        )
      );
      }
}

