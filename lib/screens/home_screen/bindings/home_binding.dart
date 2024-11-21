import 'package:get/get.dart';
import 'package:marriage_management_app/screens/home_screen/controllers/bottom_nav_controller.dart';

class HomeBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavController());
  }

}