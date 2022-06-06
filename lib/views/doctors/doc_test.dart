import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:master_package/controller/docController.dart';

import 'doc_view.dart';

class DocTestScreen extends StatelessWidget {
  final DocController docController = Get.put(DocController());

  DocTestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Doctors"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              if (docController.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  itemCount: docController.docList.length,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  itemBuilder: (context, index) {
                    return DocTile(
                      doctorModel: docController.docList[index],
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
