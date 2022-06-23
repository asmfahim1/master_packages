import 'package:get/get.dart';


//will use this class for screen optimization latter. just making the dimensions so that calculation will be easy in future.
class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  //for slider big container
  static double pageView = screenHeight / 2.5;
  static double pageViewContainer = screenHeight / 3.63;
  static double pageViewTextContainer = screenHeight / 6.66;

  //dynamic height padding and margin(top/bottom/height/width)
  static double height10 = screenHeight / 84.4;
  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.2;
  static double height35 = screenHeight / 22.85;
  static double height45 = screenHeight / 17.77;

  //dynamic width padding and margin(left/right)
  static double width10 = screenHeight / 84.4;
  static double width15 = screenHeight / 56.27;
  static double width20 = screenHeight / 42.2;
  static double width35 = screenHeight / 22.85;
  static double width45 = screenHeight / 17.77;

  //font size
  static double fontBigS16 = screenHeight / 51.75;
  static double fontBigS20 = screenHeight / 42.2;
  static double fontBigS26 = screenHeight / 30.76;

  //for border radius
  static double radius15 = screenHeight / 53.33;
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.13;

  //for icon size
  static double iconSize25 = screenHeight / 32.00;
  static double iconSize16 = screenHeight / 52.75;

  //list view size
  static double listViewImgSize = screenWidth / 3.25;
  static double listViewTextContSIze = screenWidth / 3.9;

  //popular food page
  static double popularFoodImgSize = screenHeight / 2.5;

  //bottom height
  static double bottomHeightBar = screenHeight / 6.66;
}