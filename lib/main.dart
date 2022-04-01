import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_package/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData().copyWith(
          // primaryColor: Color(0xFF28706F),
          scaffoldBackgroundColor: Color(0xFF28706F),
          appBarTheme: AppBarTheme(backgroundColor: Colors.white)),
      home: HomeScreen(),
    );
  }
}
