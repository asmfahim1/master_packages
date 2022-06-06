import 'package:get/get.dart';
import 'package:master_package/controller/docController.dart';
import 'package:master_package/controller/drugsController.dart';
import 'package:master_package/controller/hospController.dart';
import 'package:master_package/controller/pharmaController.dart';

import 'controller/loading_controller.dart';

Future<void> initController() async {
  Get.lazyPut(() => DocController());
  Get.lazyPut(() => DrugController());
  Get.lazyPut(() => HosController());
  Get.lazyPut(() => LoadingController());
  Get.lazyPut(() => PharmaController());
}
