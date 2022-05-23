import 'package:get/get.dart';
import 'package:master_package/models/medicine/drug_by_generic_model.dart';
import 'package:master_package/services/medicine_api.dart';

class DrugController extends GetxController {
  var _drugs = {}.obs;
  var medList = {}.obs;
  var isLoading = true.obs;

  int get count => DrugsByGeneric.drugs.length;

  void addDrug(DrugsByGeneric drugsByGeneric) {}

  //calling the fetchMethod
  @override
  void onInit() {
    // TODO: implement onInit
    fetchDrug();
    super.onInit();
  }

  //fetching from amaz's api
  void fetchDrug() async {
    try {
      isLoading(true);
      var drugs = await MedicineAPI().medicineGetAPI();
      if (drugs != null) {
        medList.value = drugs as Map;
      }
    } finally {
      isLoading(false);
    }
  }
}
