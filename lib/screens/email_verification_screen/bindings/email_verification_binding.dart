import 'package:get/get.dart';
import 'package:marriage_management_app/screens/email_verification_screen/controllers/email_verification_controller.dart';

class EmailVerificationBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => EmailVerificationController());
  }

}