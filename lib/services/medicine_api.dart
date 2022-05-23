import 'dart:convert';

import 'package:http/http.dart';

import '../models/medicine/med_model.dart';

class MedicineAPI {
  Future<List<MedModel>?> medicineGetAPI() async {
    Response response = await get(Uri.parse(
        'https://medicine-api-doc.herokuapp.com/api/v1/get/medicine'));
    if (response.statusCode == 200) {
      // var jsonString = response.body;
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
      return parsed.map<MedModel>((json) => MedModel.fromJson(json)).toList();
      // debugPrint(jsonString);
      // debugPrint('pressed');
      // return medModelFromJson(jsonString);
    } else {
      return null;
    }
  }
}

///Query param
/// 'get-order-detail?shop_id=$shopId&order_id=$orderId&recipient_mobile_number=$mobileNumber'
// headers: {
//   HttpHeaders.authorizationHeader: 'Bearer ' + token!,
// },
