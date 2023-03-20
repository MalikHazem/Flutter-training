import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class Users extends ChangeNotifier {
  List users = [];
  List products = [];

  Future<bool> fetchUsers() async {
    var url = Uri.https('dummyjson.com', 'users');
    var r = await http.get(url);
    var result = jsonDecode(r.body);
    users = result['users'];
    notifyListeners();

    return true;
  }

  fetchProducts() {
    var url = Uri.https('dummyjson.com', 'products');
    http.get(url).then((res) {
      var result = jsonDecode(res.body);
      products = result['products'];
      notifyListeners();
    });
    return true;
  }

  addNewUser() {
    users.add({'firstName': "Malik"});
    notifyListeners();
  }

  deleteNewUser() {
    users.removeLast();
    notifyListeners();
  }

  addNewProduct() {
    products.add({'firstName': "Iphone 12"});
    notifyListeners();
  }

  usersCount() {
    return users.length;
  }
}
