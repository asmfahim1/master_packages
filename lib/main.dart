import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:master_package/constants/constants.dart';
import 'package:master_package/screens/splash_screen.dart';

void main() async {
  Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello Pharma',
      theme: ThemeData().copyWith(
        // primaryColor: Color(0xFF28706F),
        scaffoldBackgroundColor: kDeepGreen,
        appBarTheme:
            AppBarTheme(backgroundColor: Colors.transparent, elevation: 0),
      ),
      home: SplashScreen(),
    );
  }
}
