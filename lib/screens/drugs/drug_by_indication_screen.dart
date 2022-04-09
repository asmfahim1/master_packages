import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_package/models/drug_by_indication_model.dart';

import '../../controller/drugsController.dart';

class DrugByIndicationScreen extends StatelessWidget {
  const DrugByIndicationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ListView.builder(
            itemCount: DrugsByIndication.drugs.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                  color: Colors.white, child: DrugByGenericCard(index: index));
            }));
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
            child: Center(
              child: Text(
                DrugsByIndication.drugs[index].dImage,
                style: TextStyle(fontSize: 10),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: Text(
            DrugsByIndication.drugs[index].drugName,
            style: TextStyle(fontSize: 17),
          ))
        ],
      ),
    );
  }
}
