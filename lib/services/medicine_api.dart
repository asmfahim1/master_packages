import 'dart:developer';

import 'package:http/http.dart';

import '../models/medicine/med_model.dart';

class MedicineAPI {
  Future<List<MedModel>> medicineGetAPI() async {
    var response =
        await get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    print('----------------------------');
    log(response.body);
    print('----------------------------');
    return medModelFromJson(response.body);
  }
}

// //http.client
// class RemoteService {
//   static var client = http.Client();
//
//   static Future<List<MedModel>?> fetchProducts() async {
//     var response = await client.get(Uri.parse(
//         'https://medicine-api-doc.herokuapp.com/api/v1/get/medicine'));
//
//     if (response.statusCode == 200) {
//       var jsonString = response.body;
//       return medModelFromJson(jsonString);
//     } else {
//       /// Show error message
//       return null;
//     }
//   }
// }
