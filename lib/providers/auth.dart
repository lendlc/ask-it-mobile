import 'dart:convert';
import 'dart:io';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  String _token;
  DateTime _expiryDate;
  String _uid;
  bool isTutor = false;

  Future<void> register(
    String firstName,
    String lastName,
    String role,
    String email,
    String password,
  ) async {
    const url = 'https://api.ask-it-mobile.com/api/auth/register';

    var response = await http.post(
      url,
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
      },
      body: jsonEncode({
        "firstName": firstName,
        "lastName": lastName,
        "role": role,
        "email": email,
        "password": password,
      }),
    );

    print(jsonDecode(response.body));
  }

  Future<int> login(String email, String password) async {
    //const url = 'https://api.ask-it-mobile.com/api/auth/login';
    const url = 'https://api.ask-it-mobile.com/api/auth/login';

    return 200;

    var response = await http.post(
      url,
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
      },
      body: jsonEncode({
        "email": email,
        "password": password,
      }),
    );

    Map<String, dynamic> data = jsonDecode(response.body);

    //Checks if success is false
    if (!data['success']) {
      return 400;
    }

    if (data['user']['role'] != 'tutee') {
      isTutor = true;
      notifyListeners();
    }

    return response.statusCode;
  }

  void logout() {
    isTutor = false;
    notifyListeners();
  }
}
