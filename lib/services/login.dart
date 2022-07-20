import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/login/login_model.dart';

class LoginServices {
  Future<LoginModel> postMethod(String name, String pass) async {
    var response =
        await http.post(Uri.parse('https://pharmacy.brotherdev.com/login.php'),
            body: jsonEncode(<String, String>{
              "email": name,
            }));
    debugPrint(response.body);
    LoginModel data = loginModelFromJson(response.body);
    return data;
  }
}
