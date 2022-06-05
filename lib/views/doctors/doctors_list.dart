import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_package/controller/docController.dart';
import 'package:master_package/models/doctor/docs_model.dart';

class DoctorsListScreen extends StatelessWidget {
  const DoctorsListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ListView.builder(
            itemCount: DoctorListModel.doctors.length,
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
  final DocController docController = Get.put(DocController());
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
          Text(DoctorListModel.doctors[index].id.toString() + '. '),
          Expanded(
            child: Text(
              DoctorListModel.doctors[index].name,
              style: const TextStyle(fontSize: 17),
            ),
          )
        ],
      ),
    );
  }
}
