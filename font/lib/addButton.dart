import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});
  // const AddButton({Key.key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    String text = 'click';
    void add()
    {

    }
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: add,
                  child: Text(text)
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}