import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class TestApi extends ChangeNotifier {
  List user = [];
  static String Url = 'api/v1/academy/auth/login_via_otp?mobile=0593061868&otp_code=3899';
  // static String Url = '127.0.0.1:8000';
  // static String domain = 'api/auth/login?email=asd@gmail.com&password=malk1234567899';

  Future<bool> fetchUser() async {
    // final r = await http
    //   .post(Uri.parse('https://127.0.0.1:8000/api/auth/login?email=asd@gmail.com&password=malk1234567899'));
    //// http://127.0.0.1:8000/api/auth/login?email=asd@gmail.com&password=malk1234567899
    var url = Uri.https('127.0.0.1:8000', '/api/auth/login?email=asd@gmail.com&password=malk1234567899');
    var r = await http.post(url);
    print(r);
    var result = jsonDecode(r.toString());
    print('object2');
    // print(r.body);
    user = result['user'];
    notifyListeners();
    return true;
  }

  usersCount() {
    return user.length;
  }
}
