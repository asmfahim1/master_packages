import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_package/controller/drugsController.dart';
import 'package:master_package/models/medicine/drug_by_generic_model.dart';

class DrugByGenericScreen extends StatelessWidget {
  const DrugByGenericScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: DrugsByGeneric.drugs.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              color: Colors.white, child: DrugByGenericCard(index: index));
        });
  }
}

class DrugByGenericCard extends StatelessWidget {
  final DrugController drugController = Get.put(DrugController());
  final int index;
  DrugByGenericCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 26,
            child: Text(
              DrugsByGeneric.drugs[index].dImage,
              style: TextStyle(fontSize: 10),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: Text(
            DrugsByGeneric.drugs[index].drugName,
            style: TextStyle(fontSize: 17),
          ))
        ],
      ),
    );
  }
}
