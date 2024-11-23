import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:marriage_management_app/routes/app_routes.dart';
import 'package:marriage_management_app/screens/otp_verification_screen/controllers/otp_verification_controller.dart';
import 'package:marriage_management_app/utils/app_colors.dart';
import 'package:marriage_management_app/widgets/custom_app_bar/custom_app_bar_with_logo.dart';
import 'package:marriage_management_app/widgets/custom_elevated_btn.dart';
import 'package:marriage_management_app/widgets/custom_text_form_field.dart';

class OtpVerificationScreen extends StatelessWidget {
  OtpVerificationScreen({super.key});

  final _otpVerificationController = Get.find<OtpVerificationController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWithLogo(
        onPressed: () {
          Get.back();
        },
      ),
      body: Container(
        height: double.infinity.h,
        width: double.infinity.w,
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Gap(180.h),
              Text('ovsTitle'.tr,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 30.sp)),
              Gap(30.h),
              Text('ovsSubTitle'.tr,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: context.isDarkMode
                          ? AppColors.darkGreyClr
                          : AppColors.lightGreyClr),
                  textAlign: TextAlign.center),
              Gap(60.h),
              CustomTextFormField(
                  controller: _otpVerificationController.otpController,
                  keyBoardType: TextInputType.phone,
                  hintText: 'ovsOtpHint'.tr),
              Gap(20.h),
              CustomElevatedBtn(onPressed: () {
                Get.toNamed(AppRoutes.setPasswordScreen);
              }, name: 'ovsVerifyBtn'.tr),
            ],
          ),
        ),
      ),
    );
  }
}
