import 'package:flutter/material.dart';
import 'dart:ui';
class Rowdesign extends StatelessWidget {
  const Rowdesign({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constrain)
    {
      return Column(
        children: [
          Container(
            height: (constrain.minHeight * 0.5),
            child: Row(
              children: [
                Container(
                  width: constrain.maxWidth * 0.5,
                  color: Colors.cyan,
                ),
                Container(
                  width: constrain.maxWidth * 0.5,
                  color: Colors.lightGreen,
                ),
              ],
            ),
          ),
          Container(
            height: (constrain.minHeight * 0.5),
            child: Row(
              children: [
                Container(
                  width: constrain.maxWidth * 0.7,
                  color: Colors.red,
                ),
                Container(
                  width: constrain.maxWidth * 0.3,
                  color: Color.fromARGB(255, 212, 191, 0),
                ),
              ],
            ),
          ),
        ],
      );
    }
    );
  }
}