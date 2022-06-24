import 'package:get/get.dart';

import '../../views/ambulance/ambulance_main_screen.dart';
import '../../views/cart_screen.dart';
import '../../views/dashboard_screen.dart';
import '../../views/doctors/doctors_main_screen.dart';
import '../../views/drugs/drus_main_screen.dart';
import '../../views/hospitals/hospital_main_screen.dart';
import '../../views/login_signup_resetpass/create_account_screen.dart';
import '../../views/login_signup_resetpass/login_screen.dart';
import '../../views/login_signup_resetpass/reset_confirm_pass_screen.dart';
import '../../views/login_signup_resetpass/reset_pass_screen.dart';
import '../../views/nurse/nurse_care_main_screen.dart';
import '../../views/pharmacy/pharmacy_main_screen.dart';
import '../../views/profile_screen.dart';
import '../../views/search_screen.dart';
import '../../views/splash_screen.dart';
import '../../views/user_screen.dart';

class RouteHelper {
  static const String initial = "/";
  static const String userScreen = "/user";
  static const String loginScreen = "/login";
  static const String resetPassScreen = "/forgot_pass";
  static const String resetConfifrmPassScreen = "/reset_conf";
  static const String createAccountScreen = "/create_acc";
  static const String dashboardScreen = "/dashboard";
  static const String searchScreen = "/search";
  static const String cartScreen = "/cart";
  static const String profileScreen = "/profile";
  static const String drugMainScreen = "/drug";
  static const String doctorMScreen = "/doctor";
  static const String pharmacyScreen = "/pharmacy";
  static const String hospitalMScreen = "/hospital";
  static const String ambulanceScreen = "/ambulance";
  static const String nurseCareScreen = "/nurse";

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => SplashScreen()),
    GetPage(name: userScreen, page: () => UserScreen()),
    GetPage(name: loginScreen, page: () => LoginScreen()),
    GetPage(name: resetPassScreen, page: () => ResetPassScreen()),
    GetPage(
        name: resetConfifrmPassScreen, page: () => ResetConfirmPassScreen()),
    GetPage(name: createAccountScreen, page: () => CreateAccountScreen()),
    GetPage(name: dashboardScreen, page: () => DashboardScreen()),
    // GetPage(name: '/user', page: () => UserScreen()),
    GetPage(name: searchScreen, page: () => SearchScreen()),
    GetPage(name: cartScreen, page: () => CartScreen()),
    GetPage(name: profileScreen, page: () => ProfileScreen()),
    GetPage(name: drugMainScreen, page: () => DrugMainScreen()),
    GetPage(name: doctorMScreen, page: () => DoctorMScreen()),
    GetPage(name: pharmacyScreen, page: () => PharmacyScreen()),
    GetPage(name: hospitalMScreen, page: () => HospitalMScreen()),
    GetPage(name: ambulanceScreen, page: () => AmbulanceScreen()),
    GetPage(name: nurseCareScreen, page: () => NurseCareScreen()),
  ];
}
