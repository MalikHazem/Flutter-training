import 'package:flutter/material.dart';

class salaryButton extends StatelessWidget {
  Function changeSalary;
  salaryButton({super.key, required this.changeSalary});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:(){
        changeSalary();
      },  
      child: const Text("change"));
  }
}