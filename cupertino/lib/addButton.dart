import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});
  // const AddButton({Key.key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isIOS = Theme.of(context).platform  == TargetPlatform.iOS;
    bool isLand = MediaQuery.of(context).orientation  == Orientation.landscape;

    String text = 'click';
    void add()
    {

    }
    return isIOS
    ? CupertinoButton(
        child: Text(text),
        onPressed: add)
      : Container(
        height: 20,
        child: Expanded(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: add,
                child: Text(text)),
            ],
          ),
        ),
      );
  }
}