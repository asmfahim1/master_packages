import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

class MedicineAPI {
  Future<int> medicineGetAPI() async {
    Response response = await get(
      Uri.parse('https://medicine-api-doc.herokuapp.com/api/v1/get/doctor'),

      ///Query param
      /// 'get-order-detail?shop_id=$shopId&order_id=$orderId&recipient_mobile_number=$mobileNumber'
      // headers: {
      //   HttpHeaders.authorizationHeader: 'Bearer ' + token!,
      // },
    );

    print(response.statusCode);

    debugPrint(response.body);

    return response.statusCode;
  }
}
