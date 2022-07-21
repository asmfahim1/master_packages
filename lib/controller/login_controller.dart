import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:master_package/models/login/login_model.dart';
import 'package:master_package/services/login.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> fromKey = GlobalKey();
  final GlobalKey<FormState> fromKey1 = GlobalKey();

  fetchData() async {
    LoginModel data = await LoginServices()
        .postMethod(emailController.text, passwordController.text);
    print(data.id);
  }
}
