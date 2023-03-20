import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

class T1 extends StatefulWidget {
  var num = 0;
  var addunm;
  T1(this.num, this.addunm);

  @override
  State<T1> createState() => _T1State();
}

class _T1State extends State<T1> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          width: double.infinity,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Text(index.toString());
            },
            )
        ),
        Container(
          height: 150,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                widget.addunm(widget.num);
              });
            },
            child: const Text("add"),
          ),
        ),
        SizedBox(
          height: 150,
          width: double.infinity,
          child: Column(
            children: [
              Text(widget.num.toString())
            ],
            )
        ),
      ],
    );
  }
}
