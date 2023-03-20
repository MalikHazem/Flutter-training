import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:usersdata/user_model.dart';

class UsersLest extends ChangeNotifier
{
  List<UserModel> users = [];
  UsersLest();
  
  setUsers(){
    users = List.generate(12, (index) {
      var user = UserModel(
        name: "users ${index+1}",
        // age: index + 20,
        age: getAge(),
        id: index + 17,
      );
      return user;
    },
    );
  }
  int getAge(){
    int min = 20;
    int max = 65;
    Random ran = new Random();
    int r = min + ran.nextInt(max - min);
    return r;
  }
}