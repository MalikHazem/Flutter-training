import 'dart:convert';
import 'dart:async';

import 'package:academy/utils/http-implement/api.dart';
import 'package:academy/utils/http-implement/globals.dart';
import 'package:academy/utils/http-implement/http_requester.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Auth with ChangeNotifier {
  String? _token;
  DateTime? _expiryDate;
  int? _userId;
  String? _userName;
  Timer? _authTimer;

  bool get isAuth {
    return token != null;
  }

  String? get token {
    if (_expiryDate != null &&
        _expiryDate!.isAfter(DateTime.now()) &&
        _token != null) {
      return _token;
    }
    return null;
  }

  int? get userId {
    return _userId;
  }

  String? get userName {
    return _userName;
  }

  Future<void> _authenticate(String mobile, String password) async {
    Map body = {
      'mobile': mobile,
      'password': password,
    };

    var responseData =
        await HttpRequester(url: API.login(), body: body).doPost();
    await makeLogin(responseData);
  }

  Future makeLogin(responseData) async {
    _token = responseData['access_token'];
    _userId = responseData['user']['id'];
    _userName = responseData['user']['name'];
    print(responseData['expires_in']);
    _expiryDate = DateTime.now().add(
      Duration(
        minutes: responseData['expires_in'],
      ),
    );

    _autoLogout();
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    final userData = json.encode(
      {
        'token': _token,
        'userId': _userId,
        'userName': _userName,
        'expiryDate': _expiryDate!.toIso8601String(),
      },
    );
    prefs.setString('userData', userData);

    Globals.isAuth = true;
    Globals.accessToken = _token;
  }

  Future<void> signup(String mobile, String password) async {
    return _authenticate(mobile, password);
  }

  Future<void> login({required String mobile, required String password}) async {
    return _authenticate(mobile, password);
  }

  Future<bool> tryAutoLogin() async {
    final prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey('userData')) {
      return false;
    }
    String? userDataPrefs = prefs.getString('userData').toString();
    final extractedUserData =
        json.decode(userDataPrefs) as Map<String, dynamic>;
    final expiryDate =
        DateTime.parse(extractedUserData['expiryDate'].toString());

    if (expiryDate.isBefore(DateTime.now())) {
      return false;
    }
    _token = extractedUserData['token'] as String?;
    _userId = extractedUserData['userId'] as int?;
    _userName = extractedUserData['userName'] as String?;
    _expiryDate = expiryDate;

    Globals.isAuth = true;
    Globals.accessToken = _token;
    _autoLogout();
    notifyListeners();
    return true;
  }

  Future<void> logout() async {
    _token = null;
    _userId = null;
    _userName = null;
    _expiryDate = null;
    Globals.isAuth = false;
    Globals.accessToken = null;
    if (_authTimer != null) {
      _authTimer!.cancel();
      _authTimer = null;
    }

    final prefs = await SharedPreferences.getInstance();
    // prefs.remove('userData');
    prefs.clear();
    notifyListeners();
  }

  void _autoLogout() {
    if (_authTimer != null) {
      _authTimer!.cancel();
    }
    final timeToExpiry = _expiryDate!.difference(DateTime.now()).inSeconds;
    _authTimer = Timer(Duration(seconds: timeToExpiry), logout);
  }
}
