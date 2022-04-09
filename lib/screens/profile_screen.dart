import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_package/constants/constants.dart';
import 'package:master_package/widgets/ReusableHeadlineText.dart';
import 'package:master_package/widgets/ReusableTextButtonLCR.dart';
import 'package:master_package/widgets/ReusableTextField.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 200),
                    child: Container(
                      height: 200,
                      decoration: const BoxDecoration(
                          color: kDeepGreen,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30.0),
                              bottomRight: Radius.circular(30.0))),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: IconButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  icon: const Icon(
                                    Icons.arrow_back_ios,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.done_outline,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ReusableHeadlineText(headLineName: "Edit Profile"),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 140,
                    left: 130,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(180.0),
                      child: Image.asset(
                        "images/profile2.png",
                        scale: 9,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 210,
                    left: 205,
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.camera_alt_outlined),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 270),
                    child: Container(
                      color: kBackColor,
                      height: 446,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          ReusableTextField(
                              title: "Enter name",
                              labelText: "Name",
                              prefixIcon: const Icon(Icons.person_outline),
                              suffixIcon: const Icon(Icons.edit),
                              textEditingController: nameController),
                          const SizedBox(
                            height: 20,
                          ),
                          ReusableTextField(
                            title: "Enter contact number",
                            labelText: "Contact",
                            prefixIcon: const Icon(Icons.phone),
                            suffixIcon: const Icon(Icons.edit),
                            textEditingController: phoneController,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ReusableTextField(
                              title: "Enter email",
                              labelText: "Email",
                              prefixIcon: const Icon(Icons.email_outlined),
                              suffixIcon: const Icon(Icons.edit),
                              textEditingController: emailController),
                          const SizedBox(
                            height: 20,
                          ),
                          ReusableTextField(
                              title: "Enter address",
                              labelText: "Address",
                              prefixIcon: const Icon(Icons.home_outlined),
                              suffixIcon: const Icon(Icons.edit),
                              textEditingController: addressController),
                          const SizedBox(
                            height: 50,
                          ),
                          ReusableTextButtonL(
                            title: "Save",
                            onPressed: () {},
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 05,
                          ),
                          ReusableTextButtonL(
                            title: "Cancel",
                            onPressed: () {},
                            color: kDeepGreen,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
