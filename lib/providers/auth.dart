import 'dart:convert';
import 'dart:io';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  String _token;
  DateTime _expiryDate;
  String _uid;

  Future<void> registerTutee(
      String firstName, String lastName, String email, String password) async {
    const url = 'http://10.0.2.2:3000/api/auth/register/tutee';

    var response = await http.post(
      url,
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
      },
      body: jsonEncode({
        "firstName": firstName,
        "lastName": lastName,
        "role": 'tutee',
        "email": email,
        "password": password,
      }),
    );

    print(jsonDecode(response.body));
  }

  Future<int> login(String email, String password) async {
    const url = 'http://10.0.2.2:3000/api/auth/login';

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

    //print(jsonDecode(response.body));

    return response.statusCode;
  }
}
