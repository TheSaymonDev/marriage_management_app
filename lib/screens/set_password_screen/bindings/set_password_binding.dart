import 'package:get/get.dart';
import 'package:marriage_management_app/screens/set_password_screen/controllers/set_password_controller.dart';

class SetPasswordBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SetPasswordController());
  }
}