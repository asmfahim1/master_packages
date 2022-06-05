import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_package/controller/hospController.dart';
import 'package:master_package/models/hospital/hospital_model.dart';

class HospitalListScreen extends StatelessWidget {
  const HospitalListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ListView.builder(
            itemCount: HospitalListModel.hospitals.length,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 70,
                child: Card(
                    color: Colors.white, child: PharmacyListCard(index: index)),
              );
            }));
  }
}

class PharmacyListCard extends StatelessWidget {
  final HosController _hosController = Get.put(HosController());
  final int index;
  PharmacyListCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(HospitalListModel.hospitals[index].id.toString() + '. '),
          Expanded(
              child: Text(
            HospitalListModel.hospitals[index].name,
            style: const TextStyle(fontSize: 17),
          ))
        ],
      ),
    );
  }
}
