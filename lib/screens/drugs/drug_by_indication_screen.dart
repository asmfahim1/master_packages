import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../../controller/drugsController.dart';
import 'med_tile.dart';

class DrugByIndicationScreen extends StatelessWidget {
  DrugByIndicationScreen({Key? key}) : super(key: key);

  DrugController drugController = Get.find();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: drugController.medList.length,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Obx(() {
              if (drugController.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  itemCount: drugController.medList.length,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  itemBuilder: (context, index) {
                    return DrugTile(
                      medModel: drugController.medList[index],
                    );
                  },
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                );
              }
            }),
          ),
        ],
      ),
    );
  }
}
