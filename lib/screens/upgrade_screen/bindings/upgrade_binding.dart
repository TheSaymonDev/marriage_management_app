import 'package:get/get.dart';
import 'package:marriage_management_app/screens/upgrade_screen/controllers/plan_controller.dart';

class UpgradeBinding implements Bindings{
  @override
  void dependencies() {
   Get.put(PlanController());
  }

}