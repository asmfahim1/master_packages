import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:master_package/controller/drugsController.dart';

import '../profile_screen.dart';
import 'med_tile.dart';

class MedScreen extends StatelessWidget {
  final DrugController drugController = Get.put(DrugController());

  MedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Center(child: Text("Drug List")),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => ProfileScreen());
            },
            icon: const Icon(
              Icons.add_shopping_cart_outlined,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Expanded(
                  child: Text(
                    "Drugs",
                    style: TextStyle(
                      fontFamily: 'avenir',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Icon(
                  Icons.search_outlined,
                  size: 20,
                ),
                Icon(
                  Icons.search_outlined,
                  size: 20,
                ),
              ],
            ),
          ),
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
