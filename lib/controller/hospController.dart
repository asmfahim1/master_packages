import 'package:get/get.dart';
import 'package:master_package/models/hospital/hospital_model.dart';

class HosController extends GetxController {
  var hsptl = {}.obs;
  var isChecked = false.obs;
  int get count => HospitalListModel.hospitals.length;

  void addDrug(HospitalListModel hospitalListModel) {}
}
