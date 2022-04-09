import 'package:flutter/material.dart';
import 'package:master_package/constants.dart';
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 200),
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
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
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
                      icon: Icon(Icons.camera_alt_outlined),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 270),
                  child: Container(
                    color: kBackColor,
                    height: 446,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        ReusableTextField(
                            title: "Enter name",
                            labelText: "Name",
                            prefixIcon: Icon(Icons.person_outline),
                            suffixIcon: Icon(Icons.edit),
                            textEditingController: nameController),
                        SizedBox(
                          height: 20,
                        ),
                        ReusableTextField(
                          title: "Enter contact number",
                          labelText: "Contact",
                          prefixIcon: Icon(Icons.phone),
                          suffixIcon: Icon(Icons.edit),
                          textEditingController: phoneController,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ReusableTextField(
                            title: "Enter email",
                            labelText: "Email",
                            prefixIcon: Icon(Icons.email_outlined),
                            suffixIcon: Icon(Icons.edit),
                            textEditingController: emailController),
                        SizedBox(
                          height: 20,
                        ),
                        ReusableTextField(
                            title: "Enter address",
                            labelText: "Address",
                            prefixIcon: Icon(Icons.home_outlined),
                            suffixIcon: Icon(Icons.edit),
                            textEditingController: addressController),
                        SizedBox(
                          height: 50,
                        ),
                        ReusableTextButtonL(
                          title: "Save",
                          onPressed: () {},
                          color: Colors.white,
                        ),
                        SizedBox(
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
    );
  }
}
