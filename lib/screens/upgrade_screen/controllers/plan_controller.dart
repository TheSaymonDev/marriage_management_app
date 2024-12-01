import 'package:get/get.dart';

class PlanController extends GetxController{
  int selectedPlan = 0;

  void selectionPlan(int index){
    selectedPlan = index;
    update();
  }
}