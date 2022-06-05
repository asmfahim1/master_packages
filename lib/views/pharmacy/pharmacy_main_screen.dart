import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_package/constants/constants.dart';
import 'package:master_package/screens/pharmacy/pharmacy_list_screen.dart';

class PharmacyScreen extends StatefulWidget {
  const PharmacyScreen({Key? key}) : super(key: key);

  @override
  State<PharmacyScreen> createState() => _PharmacyScreenState();
}

class _PharmacyScreenState extends State<PharmacyScreen> {
  TextEditingController searchController = TextEditingController();
  Icon cusIcon = const Icon(Icons.search_outlined);
  Widget cusSearchBar = const Text("Pharmacy list");

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
                      style: const TextStyle(color: Colors.white, fontSize: 15),
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: kBackColor,
                        hintText: "Search for medicines",
                        hintStyle: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    );
                  } else {
                    cusIcon = const Icon(Icons.search_outlined);
                    cusSearchBar = const Text("Pharmacy list");
                  }
                });
              },
              icon: cusIcon,
            ),
          ],
        ),
        body: Column(
          children: const [
            PharmacyListS(),
          ],
        ));
  }
}
