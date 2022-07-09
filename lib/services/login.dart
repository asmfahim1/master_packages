import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../models/login/login_model.dart';

class LoginServices {
  Future<int> postMethod(String name, String pass) async {
    var response =
        await http.post(Uri.parse('https://pharmacy.brotherdev.com/login.php'),
            body: jsonEncode(<String, String>{
              "email": name,
            }));
    debugPrint(response.body);
    data = loginModelFromJson(response.body);
    debugPrint(data.email);
    debugPrint(pass);
    debugPrint(name);
    if (response.body == "no data found") {
      Get.snackbar(
        'Success',
        'login nai',
        backgroundColor: Colors.white,
      );
    }
    if (response.statusCode == 200 &&
        data.email == name &&
        data.password == pass) {
      Get.snackbar(
        'Success',
        'login Successful',
        backgroundColor: Colors.white,
      );
      // Get.offAllNamed('/dashboard');
      return response.statusCode;
    } else {
      Get.snackbar(
        "Error",
        "Credential not matched",
        colorText: Colors.red,
        backgroundColor: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
      return response.statusCode;
    }
  }

  late LoginModel data;
}
