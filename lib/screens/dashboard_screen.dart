import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_package/screens/login_signup_resetpass/login_screen.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key? key}) : super(key: key);

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  TextEditingController dashboardController = TextEditingController();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () {
                  Get.to(() => LoginScreen());
                },
                icon: Icon(
                  Icons.logout,
                  size: 25,
                ))
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 300,
              // decoration: BoxDecoration(
              //   color: Colors.white,
              //   borderRadius: BorderRadius.only(
              //     bottomLeft: Radius.circular(40.0),
              //     bottomRight: Radius.circular(40.0),
              //   ),
              // ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 150),
                child: SizedBox(
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
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 2, right: 2, top: 25, bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                flex: 0,
                                child: TextButton(
                                  onPressed: () {},
                                  child: Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFF28706F),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            Icons.local_pharmacy,
                                            size: 60,
                                          ),
                                          Text(
                                            "Pharmacy",
                                            style: TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text("Look for nearby pharmacy"),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 0,
                                child: TextButton(
                                  onPressed: () {},
                                  child: Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFF28706F),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            Icons.local_pharmacy,
                                            size: 60,
                                          ),
                                          Text(
                                            "Pharmacy",
                                            style: TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text("Look for nearby pharmacy"),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Expanded(
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //     children: [
                      //       Expanded(
                      //         flex: 0,
                      //         child: TextButton(
                      //           onPressed: () {},
                      //           child: Expanded(
                      //             child: Container(
                      //               decoration: BoxDecoration(
                      //                 color: Color(0xFF28706F),
                      //                 borderRadius: BorderRadius.circular(20.0),
                      //               ),
                      //               child: Column(
                      //                 children: [
                      //                   Icon(
                      //                     Icons.local_pharmacy,
                      //                     size: 60,
                      //                   ),
                      //                   Text(
                      //                     "Pharmacy",
                      //                     style: TextStyle(
                      //                         fontSize: 30,
                      //                         fontWeight: FontWeight.bold),
                      //                   ),
                      //                   Text("Look for nearby pharmacy"),
                      //                 ],
                      //               ),
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //       Expanded(
                      //         flex: 0,
                      //         child: TextButton(
                      //           onPressed: () {},
                      //           child: Expanded(
                      //             child: Container(
                      //               decoration: BoxDecoration(
                      //                 color: Color(0xFF28706F),
                      //                 borderRadius: BorderRadius.circular(20.0),
                      //               ),
                      //               child: Column(
                      //                 children: [
                      //                   Icon(
                      //                     Icons.local_pharmacy,
                      //                     size: 60,
                      //                   ),
                      //                   Text(
                      //                     "Pharmacy",
                      //                     style: TextStyle(
                      //                         fontSize: 30,
                      //                         fontWeight: FontWeight.bold),
                      //                   ),
                      //                   Text("Look for nearby pharmacy"),
                      //                 ],
                      //               ),
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Color(0xFF28706F),
              ),
              label: 'Home',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.business,
                color: Color(0xFF28706F),
              ),
              label: 'Business',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.school,
                color: Color(0xFF28706F),
              ),
              label: 'School',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Color(0xFF28706F),
              ),
              label: 'Settings',
              backgroundColor: Colors.white,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
