import 'package:get/get.dart';
import 'package:marriage_management_app/screens/otp_verification_screen/controllers/otp_verification_controller.dart';

class OtpVerificationBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => OtpVerificationController());
  }
}