import 'dart:developer';

import 'package:http/http.dart';

import '../models/doctor/doc_model.dart';

class DoctorAPI {
  Future<List<DoctorModel>> getDocAPi() async {
    var response = await get(
        Uri.parse('https://medicine-api-doc.herokuapp.com/api/v1/get/doctor'));
    if (response.statusCode == 200) print('..........................');
    log(response.body);
    print('..........................');
    return doctorModelFromJson(response.body);
  }
}
