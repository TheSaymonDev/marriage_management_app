import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:marriage_management_app/utils/app_colors.dart';

class AppConstFunctions{
  static SnackbarController customErrorMessage({required dynamic message}) {
    return Get.snackbar('Error', message,
        icon:  const Icon(Icons.error, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Color(0xFFFF3131),
        margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        duration: const Duration(seconds: 3),
        colorText: Colors.white);
  }

  static SnackbarController customSuccessMessage({required dynamic message}) {
    return Get.snackbar('Success', message,
        icon: const Icon(Icons.verified_outlined, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Color(0xFF02d878),
        margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        duration: const Duration(seconds: 3),
        colorText: Colors.white);
  }

  static final customCircularProgressIndicator =
  SpinKitHourGlass(color: AppColors.primaryClr, size: 35.0.r);
}