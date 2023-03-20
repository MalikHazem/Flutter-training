import 'dart:convert';

import 'package:http/http.dart' as http;

import 'exception_handlers.dart';
import 'globals.dart';

class HttpRequester {
  static const int timeOutDuration = 35;
  late Uri uri;
  bool? isFile = false;
  Map? body;
  Map<String, String> headers = {"Content-Type": "application/json"};
  HttpRequester({required url, this.body, this.isFile}) {
    uri = Uri.parse(url);
    if (Globals.isAuth) {
      headers = {
        "Content-Type": "application/json",
        'Authorization': 'Bearer ${Globals.accessToken}',
        'FirebaseToken': Globals.firebaseToken == null
            ? ''
            : Globals.firebaseToken.toString(),
      };
    }
  }

//POST
  Future<dynamic> doPost() async {
    var payload = jsonEncode(this.body);
    try {
      var response = await http
          .post(this.uri, body: payload, headers: headers)
          .timeout(const Duration(seconds: timeOutDuration));

      return _processResponse(response);
    } catch (e) {
      throw ExceptionHandlers().getExceptionString(e);
    }
  }

//GET
  Future<dynamic> doGet() async {
    try {
      var response = await http
          .get(this.uri, headers: headers)
          .timeout(const Duration(seconds: timeOutDuration));
      return _processResponse(response);
    } catch (e) {
      print(ExceptionHandlers().getExceptionString(e));
      throw ExceptionHandlers().getExceptionString(e);
    }
  }

  //----------------------ERROR STATUS CODES----------------------

  dynamic _processResponse(http.Response response) {
    print(response.body);
    switch (response.statusCode) {
      case 200:
        var responseJson = jsonDecode(response.body);
        return responseJson;
      case 201:
        var responseJson = jsonDecode(response.body);
        return responseJson;
      case 400: //Bad request
        throw BadRequestException(jsonDecode(response.body)['message']);
      case 422: //Bad request
        throw FailsValidationException(
            errorExtractor(jsonDecode(response.body)['errors']));
      case 401: //Unauthorized
        throw UnAuthorizedException(jsonDecode(response.body)['message']);
      case 403: //Forbidden
        throw UnAuthorizedException(jsonDecode(response.body)['message']);
      case 404: //Resource Not Found
        throw NotFoundException(jsonDecode(response.body)['message']);
      case 429: //Resource Not Found
        throw ManyRequestException("many request error");
      case 500: //Internal Server Error
        throw BadRequestException(
            "the server encountered an unexpected condition.");
      default:
        throw FetchDataException(
            'Something went wrong! ${response.statusCode}');
    }
  }

  String errorExtractor(errors) {
    String message = "";

    errors.forEach((k, v) {
      for (var error in v) {
        message += error + '\n';
      }
    });
    return message;
  }
}
