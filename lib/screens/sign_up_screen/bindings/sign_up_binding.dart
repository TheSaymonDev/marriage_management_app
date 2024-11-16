import 'package:get/get.dart';
import 'package:marriage_management_app/screens/sign_up_screen/controllers/sign_up_controller.dart';

class SignUpBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpController());
  }
}