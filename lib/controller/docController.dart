import 'package:get/get.dart';
import 'package:master_package/models/doctor/doc_model.dart';
import 'package:master_package/models/doctor/docs_model.dart';
import 'package:master_package/services/doctor_api.dart';

class DocController extends GetxController {
  var dctr = {}.obs;

  var docList = <DoctorModel>[].obs;
  var isLoading = true.obs;

  var isChecked = false.obs;
  int get count => DoctorListModel.doctors.length;

  // void addDrug(DoctorListModel doctorListModel) {}
  //calling the fetchMethod
  @override
  void onInit() {
    // TODO: implement onInit
    fetchDocList();
    super.onInit();
  }

  void fetchDocList() async {
    try {
      isLoading(true);
      var docs = await DoctorAPI().getDocAPi();
      docList.assignAll(docs);
    } finally {
      isLoading(false);
    }
  }
}
