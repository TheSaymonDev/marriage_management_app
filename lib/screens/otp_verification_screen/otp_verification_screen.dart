import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:marriage_management_app/routes/app_routes.dart';
import 'package:marriage_management_app/screens/otp_verification_screen/controllers/otp_verification_controller.dart';
import 'package:marriage_management_app/utils/app_colors.dart';
import 'package:marriage_management_app/widgets/custom_elevated_btn.dart';
import 'package:marriage_management_app/widgets/custom_text_form_field.dart';

class OtpVerificationScreen extends StatelessWidget {
  OtpVerificationScreen({super.key});

  final _otpVerificationController = Get.find<OtpVerificationController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity.h,
        width: double.infinity.w,
        padding: EdgeInsets.symmetric(horizontal: 32.w),
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                Gap(120.h),
                Lottie.asset('assets/lotties/otp.json',width: 200.w),
                Gap(16.h),
                Text('Marriage Management', style: Theme.of(context).textTheme.bodyLarge),
                Gap(8.h),
                Text('Online marriage media platform',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: secondaryClr)),
                Gap(48.h),
                CustomTextFormField(
                    controller: _otpVerificationController.otpController,
                    hintText: 'One Time Password',
                    ),
                Gap(32.h),
                CustomElevatedButton(
                    onPressed: () {
                      Get.toNamed(AppRoutes.setPasswordScreen);
                    },
                    name: 'VERIFY')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
