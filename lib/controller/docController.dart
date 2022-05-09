import 'package:get/get.dart';
import 'package:master_package/models/doctor/docs_model.dart';

class DocController extends GetxController {
  var dctr = {}.obs;
  var isChecked = false.obs;
  int get count => DoctorListModel.doctors.length;

  void addDrug(DoctorListModel doctorListModel) {}
}
