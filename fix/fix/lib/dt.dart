import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DT extends StatelessWidget {
  var date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    var dt = DateFormat('yDm').format(date);
    return Container(
      child: Text(date.toString()),
    );
  }
}