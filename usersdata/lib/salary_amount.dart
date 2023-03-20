
import 'package:flutter/material.dart';
import 'package:usersdata/user_model.dart';

class SalaryAmount extends StatelessWidget {
  final UserModel user; 
  const SalaryAmount({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Text("${user.salary}");
  }
}