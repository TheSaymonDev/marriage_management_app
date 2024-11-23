import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:marriage_management_app/routes/app_routes.dart';
import 'package:marriage_management_app/screens/set_password_screen/controllers/set_password_controller.dart';
import 'package:marriage_management_app/utils/app_colors.dart';
import 'package:marriage_management_app/utils/app_validators.dart';
import 'package:marriage_management_app/widgets/custom_app_bar/custom_app_bar_with_logo.dart';
import 'package:marriage_management_app/widgets/custom_elevated_btn.dart';
import 'package:marriage_management_app/widgets/custom_text_form_field.dart';

class SetPasswordScreen extends StatelessWidget {
  SetPasswordScreen({super.key});

  final setPasswordController = Get.find<SetPasswordController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWithLogo(onPressed: () {
        Get.back();
      }),
      body: Container(
        height: double.infinity.h,
        width: double.infinity.w,
        padding: EdgeInsets.symmetric(horizontal: 32.w),
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                Gap(140.h),
                Text('spsTitle'.tr,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontSize: 30.sp)),
                Gap(30.h),
                Text('spsSubTitle'.tr,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: context.isDarkMode
                            ? AppColors.darkGreyClr
                            : AppColors.lightGreyClr),
                    textAlign: TextAlign.center),
                Gap(60.h),
                GetBuilder<SetPasswordController>(builder: (controller) {
                  return CustomTextFormField(
                      controller: controller.newPasswordController,
                      hintText: 'spsNewPasswordHint'.tr,
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
                              size: 20.sp,
                              color: context.isDarkMode? AppColors.lightGreyClr: AppColors.darkGreyClr)));
                }),
                Gap(15.h),
                GetBuilder<SetPasswordController>(builder: (controller) {
                  return CustomTextFormField(
                      controller: controller.confirmPasswordController,
                      hintText: 'spsConfirmPasswordHint'.tr,
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
                              size: 20.sp,
                              color: context.isDarkMode? AppColors.lightGreyClr: AppColors.darkGreyClr)));
                }),
                Gap(20.h),
                CustomElevatedBtn(
                    onPressed: () {
                      Get.offAllNamed(AppRoutes.signInScreen);
                    },
                    name: 'spsVerifyBtn'.tr)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
