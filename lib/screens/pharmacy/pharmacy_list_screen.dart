import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_package/controller/pharmaController.dart';
import 'package:master_package/models/pharmacy/pharmacies_model.dart';

class PharmacyListS extends StatelessWidget {
  const PharmacyListS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ListView.builder(
            itemCount: PharmacyListModel.pharmacies.length,
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
  final PharmaController pharmaController = Get.put(PharmaController());
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
          Text(PharmacyListModel.pharmacies[index].id.toString() + '. '),
          Expanded(
              child: Text(
            PharmacyListModel.pharmacies[index].name,
            style: const TextStyle(fontSize: 17),
          ))
        ],
      ),
    );
  }
}
