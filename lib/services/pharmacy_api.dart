import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:master_package/models/pharmacy/pharma_model.dart';

class PharmacyApi {
  Future<List<PharmacyModel>> getPharmacyAPI() async {
    var response = await get(
      Uri.parse('https://medicine-api-doc.herokuapp.com/api/v1/get/pharmacy'),
    );
    if (response.statusCode == 200) debugPrint('-------------------');
    debugPrint(response.body);
    debugPrint('-----------');
    return pharmacyModelFromJson(response.body);
  }
}
