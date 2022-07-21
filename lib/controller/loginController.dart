import 'package:get/get.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;
  // var dataU = <LoginModel>[].obs;
  // var loginData = ''.obs;

  // Future<void> getUidFromLogin(email, password) async {
  //   try {
  //     isLoading(true);
  //     var data = await LoginServices().postMethod(email, password);
  //     dataU.assignAll(data);
  //   } finally {
  //     isLoading(false);
  //   }
  // }

  // Future<void> getUidFromLogin(email, password) async {
  //   if (dataU == 200) {
  //     var data = LoginServices().postMethod(email, password);
  //     loginData = data as RxString;
  //   }
  // }
}
