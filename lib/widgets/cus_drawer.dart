import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/constants.dart';

class CusDrawer extends StatelessWidget {
  const CusDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColor.kBackColor,
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 200,
            decoration: const BoxDecoration(),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const <Widget>[
                    ///backButton
                    CustomDrawerCloseButton(),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(180.0),
                      child: Image.asset(
                        'assets/images/profile3.png',
                        scale: 10,
                      ),
                    ),
                    const Text(
                      "Account",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColor.mainBlackColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),

          ///List of screens
          Expanded(
            child: Container(
              width: double.infinity,
              height: 400,
              color: AppColor.kBackColor,
              child: Align(
                alignment: Alignment.topLeft,
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        onTap: () {
                          Get.toNamed('/profile');
                        },
                        leading: const Icon(
                          Icons.account_box,
                          color: AppColor.mainBlackColor,
                          size: 20,
                        ),
                        title: const Text(
                          "Profile",
                          style: TextStyle(color: AppColor.mainBlackColor, fontSize: 20),
                        ),
                      ),

                      //Is used for customizing the app for faster execution.
                      const CusDivider(),
                      ListTile(
                        onTap: () {
                          Get.toNamed('/dashboard');
                        },
                        leading: const Icon(
                          Icons.dashboard,
                          color: AppColor.mainBlackColor,
                          size: 20,
                        ),
                        title: const Text(
                          "Dashboard",
                          style: TextStyle(color: AppColor.mainBlackColor, fontSize: 20),
                        ),
                      ),
                      const CusDivider(),
                      ListTile(
                        onTap: () {
                          Get.toNamed('/pickup');
                        },
                        leading: const Icon(
                          Icons.schedule,
                          color: AppColor.mainBlackColor,
                          size: 20,
                        ),
                        title: const Text(
                          "Pickup Schedule",
                          style: TextStyle(color: AppColor.mainBlackColor, fontSize: 20),
                        ),
                      ),
                      const CusDivider(),
                      ListTile(
                        onTap: () {
                          Get.toNamed('/notification');
                        },
                        leading: const Icon(
                          Icons.notifications_active,
                          color: AppColor.mainBlackColor,
                          size: 20,
                        ),
                        title: const Text(
                          "Notifications",
                          style: TextStyle(color: AppColor.mainBlackColor, fontSize: 20),
                        ),
                      ),
                      const CusDivider(),
                      ListTile(
                        onTap: () {
                          Get.toNamed('/history');
                        },
                        leading: const Icon(
                          Icons.history,
                          color: AppColor.mainBlackColor,
                          size: 20,
                        ),
                        title: const Text(
                          "History",
                          style: TextStyle(color: AppColor.mainBlackColor, fontSize: 20),
                        ),
                      ),
                      const CusDivider(),
                      ListTile(
                        onTap: () {
                          Get.toNamed('/contact');
                        },
                        leading: const Icon(
                          Icons.contacts,
                          color: AppColor.mainBlackColor,
                          size: 20,
                        ),
                        title: const Text(
                          "Contact",
                          style: TextStyle(color: AppColor.mainBlackColor, fontSize: 20),
                        ),
                      ),
                      const CusDivider(),
                      ListTile(
                        onTap: () {
                          Get.toNamed('/map');
                        },
                        leading: const Icon(
                          Icons.map,
                          color: AppColor.mainBlackColor,
                          size: 20,
                        ),
                        title: const Text(
                          "Map",
                          style: TextStyle(color: AppColor.mainBlackColor, fontSize: 20),
                        ),
                      ),
                      const CusDivider(),
                      ListTile(
                        onTap: () {
                          Get.toNamed('/login');
                        },
                        leading: const Icon(
                          Icons.logout,
                          color: AppColor.mainBlackColor,
                          size: 20,
                        ),
                        title: const Text(
                          "Logout",
                          style: TextStyle(color: AppColor.mainBlackColor, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//Is used for customizing the app for faster execution.
class CusDivider extends StatelessWidget {
  const CusDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 2,
      color: Colors.white,
    );
  }
}

class CustomDrawerCloseButton extends StatelessWidget {
  const CustomDrawerCloseButton({Key? key}) : super(key: key);

  // const CustomDrawer({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.back();
      },
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.white,
        size: 40,
      ),
    );
  }
}