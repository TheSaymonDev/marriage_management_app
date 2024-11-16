import 'package:get/get.dart';
import 'package:marriage_management_app/screens/sign_in_screen/controllers/sign_in_controller.dart';

class SignInBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SignInController());
  }
}