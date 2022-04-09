import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_package/screens/drugs/drug_by_generic_screen.dart';
import 'package:master_package/screens/drugs/drug_by_indication_screen.dart';
import 'package:master_package/screens/profile_screen.dart';

class DrugMainScreen extends StatelessWidget {
  const DrugMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 2,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
          title: Text("Drugs"),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text(
                  "Generic",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  "Indication",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
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
        body: const TabBarView(
          children: [
            DrugByGenericScreen(),
            DrugByIndicationScreen(),
          ],
        ),
      ),
    );
  }
}
