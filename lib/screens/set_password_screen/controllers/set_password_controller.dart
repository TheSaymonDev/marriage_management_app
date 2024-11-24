import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SetPasswordController extends GetxController{
  bool isObscureNew = true;
  bool isObscureConfirm = true;
  bool isLoading = false;

  final formKey = GlobalKey<FormState>();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void toggleObscureN() {
    isObscureNew = !isObscureNew;
    update();
  }

  void toggleObscureC() {
    isObscureConfirm = !isObscureConfirm;
    update();
  }

  // void _setLoading(bool value) {
  //   isLoading = value;
  //   update();
  // }
}