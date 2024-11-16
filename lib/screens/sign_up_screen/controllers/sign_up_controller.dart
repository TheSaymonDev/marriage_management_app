import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignUpController extends GetxController {
  bool isLoading = false;
  bool isObscure = true;
  bool isChecked = false;

  final formKey = GlobalKey<FormState>();
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();


  void toggleObscure() {
    isObscure = !isObscure;
    update();
  }

  void toggleIsChecked(bool newValue) {
    isChecked = newValue;
    update();
  }

  void _setLoading(bool value) {
    isLoading = value;
    update();
  }
}