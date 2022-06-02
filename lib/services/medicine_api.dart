import 'dart:developer';

import 'package:http/http.dart';

import '../models/medicine/med_model.dart';

class MedicineAPI {
  Future<List<MedModel>> medicineGetAPI() async {
    var response = await get(Uri.parse(
        'https://medicine-api-doc.herokuapp.com/api/v1/get/medicine'));
    if (response.statusCode == 200) print('----------------------------');
    log(response.body);
    print('----------------------------');
    return medModelFromJson(response.body);
  }
}
