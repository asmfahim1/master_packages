import 'package:get/get.dart';
import 'package:master_package/models/pharmacies_model.dart';

class PharmaController extends GetxController {
  var pharma = {}.obs;
  var isChecked = false.obs;
  int get count => PharmacyListModel.pharmacies.length;

  void addDrug(PharmacyListModel pharmacyListModel) {}
}
