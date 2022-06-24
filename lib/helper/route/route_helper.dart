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

  static List<GetPage> routes = [
    GetPage(name: '/', page: () => SplashScreen()),
    GetPage(name: '/user', page: () => UserScreen()),
    GetPage(name: '/login', page: () => LoginScreen()),
    GetPage(name: '/forgot_pass', page: () => ResetPassScreen()),
    GetPage(name: '/reset_conf', page: () => ResetConfirmPassScreen()),
    GetPage(name: '/create_acc', page: () => CreateAccountScreen()),
    GetPage(name: '/dashboard', page: () => DashboardScreen()),
    // GetPage(name: '/user', page: () => UserScreen()),
    GetPage(name: '/search', page: () => SearchScreen()),
    GetPage(name: '/cart', page: () => CartScreen()),
    GetPage(name: '/cart', page: () => ProfileScreen()),
    GetPage(name: '/drug', page: () => DrugMainScreen()),
    GetPage(name: '/doctor', page: () => DoctorMScreen()),
    GetPage(name: '/pharmacy', page: () => PharmacyScreen()),
    GetPage(name: '/hospital', page: () => HospitalMScreen()),
    GetPage(name: '/ambulance', page: () => AmbulanceScreen()),
    GetPage(name: '/nurse', page: () => NurseCareScreen()),
  ];
}
