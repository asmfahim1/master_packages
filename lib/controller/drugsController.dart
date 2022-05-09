import 'package:get/get.dart';
import 'package:master_package/models/medicine/drug_by_generic_model.dart';

class DrugController extends GetxController {
  var _drugs = {}.obs;
  var isChecked = false.obs;
  int get count => DrugsByGeneric.drugs.length;

  void addDrug(DrugsByGeneric drugsByGeneric) {}
}
