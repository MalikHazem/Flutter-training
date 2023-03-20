import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class Users extends ChangeNotifier {
  int id= 0;
  String name= '';
  String email= '';
  List users = [];
  List user = [];
  List products = [];

  Future<bool> fetchTest() async {
    var url = Uri.https('127.0.0.1:8000', 'api/auth/login');
    print(url);
    var response = await http.post(url,
        body: {'gmail': 'asd@gmail.com', 'password': 'malk1234567899'});
    print('Response status: ${response.statusCode}');
    if (response.statusCode == 200) {
      print(response);
      print(response.body);
    } else {
      print('A network error occurred');
    }
    // print(response);
    // print('Response status: ${response.statusCode}');
    // print('Response body: ${response.body}');
    var r = jsonDecode(response.body);
    // print(await http.read(Uri.https('example.com', 'foobar.txt')));
    user = r['user'];
    notifyListeners();
    return true;
  }

  Future<bool> fetchUsers() async {
    var url = Uri.https('dummyjson.com', 'auth/login');
    print('url: ${url}');
    var response = await http.post(url,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{'username': 'kminchelle', 'password': '0lelplR'}));
    print('response: ${response}');
    // var r = await http.get(url);
    var result = jsonDecode(response.body);
    print('result: ${result}');
    id = result['id'];
    // user = result['username'];
    name = result['username'];
    email = result['email'];
    // users = result;
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
