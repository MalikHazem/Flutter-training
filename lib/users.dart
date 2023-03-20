import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class Users extends ChangeNotifier {
  List users = [];

  Future<bool> fetchUsers() async {
    var url = Uri.https('dummyjson.com', 'users');
    var r = await http.get(url);
    var result = jsonDecode(r.body);
    users = result['users'];
    notifyListeners();

    return true;
  }

  addNewUser() {
    users.add("khaled");

    print(users);

    notifyListeners();
  }

  usersCount() {
    return users.length;
  }
}
