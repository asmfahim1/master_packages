import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_package/constants/constants.dart';
import 'package:master_package/screens/drugs/drug_by_generic_screen.dart';
import 'package:master_package/screens/drugs/drug_by_indication_screen.dart';
import 'package:master_package/screens/profile_screen.dart';

class DrugMainScreen extends StatefulWidget {
  const DrugMainScreen({Key? key}) : super(key: key);

  @override
  State<DrugMainScreen> createState() => _DrugMainScreenState();
}

class _DrugMainScreenState extends State<DrugMainScreen> {
  TextEditingController searchController = TextEditingController();
  Icon cusIcon = Icon(Icons.search_outlined);
  Widget cusSearchBar = Text("Drugs");

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
          titleSpacing: 5,
          title: cusSearchBar,
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    if (cusIcon.icon == Icons.search_outlined) {
                      cusIcon = const Icon(Icons.cancel);
                      cusSearchBar = TextField(
                        controller: searchController,
                        style: TextStyle(color: Colors.white, fontSize: 15),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: kBackColor,
                          hintText: "Search for medicines",
                          hintStyle:
                              TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      );
                    } else {
                      cusIcon = const Icon(Icons.search_outlined);
                      cusSearchBar = const Text("Drugs");
                    }
                  });
                },
                icon: cusIcon),
            IconButton(
              onPressed: () {
                Get.to(() => ProfileScreen());
              },
              icon: const Icon(
                Icons.add_shopping_cart_outlined,
              ),
            ),
          ],
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
        ),
        body: const TabBarView(
          children: [
            DrugByIndicationScreen(),
            DrugByGenericScreen(),
          ],
        ),
      ),
    );
  }
}
