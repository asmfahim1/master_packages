import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_package/screens/drugs/drus_main_screen.dart';
import 'package:master_package/screens/login_signup_resetpass/login_screen.dart';

import '../constants/constants.dart';
import '../widgets/ReusableHeadlineText.dart';
import '../widgets/dashboard_textbutton.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              size: 25,
            )),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => LoginScreen());
              },
              icon: const Icon(
                Icons.logout,
                size: 25,
              ))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 275,
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
              child: Column(
                children: [
                  ReusableHeadlineText(headLineName: "WELCOME"),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Md. Ahsanul Haque Mridha",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search for medicines, doctors, hospitals",
                        filled: true,
                        hoverColor: Color(0xFF28706F),
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.search_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: kRoundedColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 2, right: 2, top: 25, bottom: 0),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          DashboardTextButton(
                            onPress: () {
                              debugPrint("drugs pressed");
                              Get.to(() => const DrugMainScreen());
                            },
                            iconData: Icons.shop_two_sharp,
                            headlineText: "Drugs",
                            normalText: "     Look for drugs by types     ",
                          ),
                          DashboardTextButton(
                            onPress: () {
                              debugPrint("doctors pressed");
                            },
                            iconData: Icons.person_outline,
                            headlineText: "Doctors",
                            normalText: "       Look for best doctors       ",
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          DashboardTextButton(
                            onPress: () {
                              debugPrint("pharmacy pressed");
                            },
                            iconData: Icons.local_pharmacy_outlined,
                            headlineText: "Pharmacy",
                            normalText: " Look for nearby pharmacies ",
                          ),
                          DashboardTextButton(
                            onPress: () {
                              debugPrint("hospitals pressed");
                            },
                            iconData: Icons.local_hospital_outlined,
                            headlineText: "Hospitals",
                            normalText: "   Look for nearby hospitals   ",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
