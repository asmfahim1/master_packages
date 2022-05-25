import 'package:get/get.dart';
import 'package:master_package/models/medicine/drug_by_generic_model.dart';
import 'package:master_package/models/medicine/med_model.dart';
import 'package:master_package/services/medicine_api.dart';

class DrugController extends GetxController {
  //,ost important line for not getting error
  var medList = <MedModel>[].obs;
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

  // fetching from amaz's api
  void fetchDrug() async {
    try {
      isLoading(true);
      List<MedModel> drugs = await MedicineAPI().medicineGetAPI();
      medList.assignAll(drugs);
    } finally {
      isLoading(false);
    }
  }
}
