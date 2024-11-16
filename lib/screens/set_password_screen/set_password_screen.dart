import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:marriage_management_app/routes/app_routes.dart';
import 'package:marriage_management_app/screens/set_password_screen/controllers/set_password_controller.dart';
import 'package:marriage_management_app/utils/app_colors.dart';
import 'package:marriage_management_app/utils/app_validators.dart';
import 'package:marriage_management_app/widgets/custom_elevated_btn.dart';
import 'package:marriage_management_app/widgets/custom_text_form_field.dart';

class SetPasswordScreen extends StatelessWidget {
  SetPasswordScreen({super.key});

  final setPasswordController = Get.find<SetPasswordController>();

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
                Lottie.asset('assets/lotties/set_password.json',width: 220.w),
                Text('Marriage Management', style: Theme.of(context).textTheme.bodyLarge),
                Gap(8.h),
                Text('Online marriage media platform',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: secondaryClr)),
                Gap(48.h),
                GetBuilder<SetPasswordController>(builder: (controller) {
                  return CustomTextFormField(
                      controller: controller.newPasswordController,
                      hintText: 'Confirm Password',
                      validator: AppValidators.passwordValidator,
                      obscureText: controller.isObscureNew,
                      suffixIcon: IconButton(
                          onPressed: () {
                            controller.toggleObscureN();
                          },
                          icon: Icon(
                              controller.isObscureNew
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.grey)));
                }),
                Gap(16.h),
                GetBuilder<SetPasswordController>(builder: (controller) {
                  return CustomTextFormField(
                      controller: controller.confirmPasswordController,
                      hintText: 'New Password',
                      validator: AppValidators.passwordValidator,
                      obscureText: controller.isObscureConfirm,
                      suffixIcon: IconButton(
                          onPressed: () {
                            controller.toggleObscureC();
                          },
                          icon: Icon(
                              controller.isObscureConfirm
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.grey)));
                }),
                Gap(32.h),
                CustomElevatedButton(
                    onPressed: () {
                      Get.offAllNamed(AppRoutes.signInScreen);
                    },
                    name: 'SET PASSWORD')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
