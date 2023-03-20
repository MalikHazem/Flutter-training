import 'package:flutter/material.dart';
import 'package:usersdata/salary_amount.dart';
import 'package:usersdata/salary_button.dart';
import 'package:usersdata/user_model.dart';

class UserSalary extends StatefulWidget {
  final UserModel user; 
  const UserSalary({super.key, required this.user});

  @override
  State<UserSalary> createState() => _UserSalaryState();
}

class _UserSalaryState extends State<UserSalary> {
  void changeSalary(){
    setState(() {
      widget.user.salary = widget.user.salary + 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        salaryButton(changeSalary: changeSalary),
        SalaryAmount(user: widget.user),
      ],
    );
  }
}