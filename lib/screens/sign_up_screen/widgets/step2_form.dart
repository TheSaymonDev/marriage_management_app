import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:marriage_management_app/screens/sign_up_screen/controllers/sign_up_controller.dart';
import 'package:marriage_management_app/utils/app_colors.dart';
import 'package:marriage_management_app/widgets/custom_elevated_btn.dart';
import 'package:marriage_management_app/widgets/custom_text_form_field.dart';

class Step2Form extends StatelessWidget {
  Step2Form({super.key});

  final _signUpController = Get.find<SignUpController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity.h,
      width: double.infinity.w,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(16.h),
            Text('susMaritalStatusTitle'.tr,
                style: Theme.of(context).textTheme.bodyMedium),
            Gap(4.h),
            Text('susMaritalStatusSubTitle'.tr,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.grey)),
            Gap(8.h),
            _buildMaritalStatus(context),

            Gap(16.h),

            Text('susCountryLabel'.tr,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.grey)),
            Gap(4.h),
            CustomTextFormField(
                controller: _signUpController.countryController,
                hintText: 'susCountryHint'.tr),

            Gap(16.h),

            Text('susStateLabel'.tr,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.grey)),
            Gap(4.h),
            CustomTextFormField(
                controller: _signUpController.cityController,
                hintText: 'susStateHint'.tr),

            Gap(16.h),

            Text('susCityLabel'.tr,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.grey)),
            Gap(4.h),
            CustomTextFormField(
                controller: _signUpController.stateController,
                hintText: 'susCityHint'.tr),
            Gap(32.h),
            CustomElevatedButton(
                onPressed: () {
                  _signUpController.goToNextStep();
                }, name: 'susContinueBtn'.tr),
            Gap(32.h)
          ],
        ),
      ),
    );
  }

  GetBuilder<SignUpController> _buildMaritalStatus(BuildContext context) {
    return GetBuilder<SignUpController>(builder: (controller) {
          return Wrap(
            spacing: 12.w,
            runSpacing: 12.h,
            children: List.generate(
              controller.maritalStatus.length,
                  (index) => GestureDetector(
                onTap: () => controller.maritalStatusSelection(index),
                child: Container(
                  height: 45.h,
                  width: 120.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: controller.currentMaritalStatus == index
                          ? primaryClr
                          : Colors.black12),
                  child: Text(controller.maritalStatus[index],
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: controller.currentMaritalStatus == index
                              ? Colors.white
                              : Colors.black)),
                ),
              ),
            ),
          );
        });
  }
}
