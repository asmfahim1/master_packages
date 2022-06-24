import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:master_package/constants/constants.dart';
import 'package:master_package/helper/route/route_helper.dart';

import 'init_controller.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.initController();
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
        scaffoldBackgroundColor: AppColor.kBackColor,
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent, elevation: 0),
      ),
      defaultTransition: Transition.zoom,
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
      // home: SplashScreen(),
    );
  }
}
