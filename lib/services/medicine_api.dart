import 'package:http/http.dart';

class MedicineAPI {
  Future<int> medicineGetAPI() async {
    Response response = await get(
        Uri.parse('https://medicine-api-doc.herokuapp.com/api/v1/get/doctor'));

    return response.statusCode;
  }
}
