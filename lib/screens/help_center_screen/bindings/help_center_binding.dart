import 'package:get/get.dart';
import 'package:marriage_management_app/screens/help_center_screen/controllers/contact_us_controller.dart';

class HelpCenterBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(ContactUsController());
  }
}