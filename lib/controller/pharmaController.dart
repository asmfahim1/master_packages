import 'package:get/get.dart';
import 'package:master_package/models/pharmacy/pharma_model.dart';
import 'package:master_package/models/pharmacy/pharmacies_model.dart';

import '../services/pharmacy_api.dart';

class PharmaController extends GetxController {
  var pharma = {}.obs;
  var isChecked = false.obs;
  int get count => PharmacyListModel.pharmacies.length;
  void addDrug(PharmacyListModel pharmacyListModel) {}

  //for amaz api
  var pharmaList = <PharmacyModel>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchPharmaList();
    super.onInit();
  }

  void fetchPharmaList() async {
    try {
      isLoading(true);
      var pharmas = await PharmacyApi().getPharmacyAPI();
      pharmaList.addAll(pharmas);
    } finally {
      isLoading(false);
    }
  }
}
