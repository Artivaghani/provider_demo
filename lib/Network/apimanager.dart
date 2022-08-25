import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:providerdemo/constance/app_const.dart';
import 'package:http/http.dart' as http;
import 'package:providerdemo/constance/app_string.dart';

class APIManager {
  static Future<Map<String, dynamic>> getAPICall(String url) async {
    Map<String, dynamic> responseJson;

    Map<String, String> hParam = {
      "Accept": "*/*",
      "Authorization": Appconst.authtoken,
    };

    try {
      final response = await http.get(Uri.parse(url), headers: hParam);
      responseJson = cheeckresponse(response);
    } on SocketException {
      throw FetchDataException(AppString.internetnotavailable);
    }
    return responseJson;
  }
}

dynamic cheeckresponse(Response response) {
  switch (response.statusCode) {
    case 200:
      var responseJson = json.decode(response.body.toString());
      return responseJson;
    case 409:
      var responseJson = json.decode(response.body.toString());
      return responseJson;
    case 400:
      var errormsg = json.decode(response.body.toString());
      throw errormsg;
    case 404:
      var errormsg = json.decode(response.body.toString());
      throw errormsg;
    case 401:
      throw response.body.toString();
    case 302:
      return '';
    case 403:
      throw UnauthorisedException(response.body.toString());
    case 500:
      throw response.body.toString();
    default:
      throw FetchDataException(
          'Error occured while Communication with Server with StatusCode: ${response.statusCode}');
  }
}

class CustomException implements Exception {
  // ignore: prefer_typing_uninitialized_variables
  final _message;

  // ignore: prefer_typing_uninitialized_variables
  final _prefix;

  CustomException([this._message, this._prefix]);

  @override
  String toString() {
    return '$_prefix$_message';
  }
}

class UnauthorisedException extends CustomException {
  UnauthorisedException(message) : super(message, "Unauthorised: ");
}

class InvalidInputException extends CustomException {
  InvalidInputException(String message) : super(message, "Invalid Input: ");
}

class FetchDataException extends CustomException {
  FetchDataException(String message)
      : super(message, "Error During Communication: ");
}
