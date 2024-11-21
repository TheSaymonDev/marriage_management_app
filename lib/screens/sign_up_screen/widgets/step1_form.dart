import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:marriage_management_app/screens/sign_up_screen/controllers/sign_up_controller.dart';
import 'package:marriage_management_app/utils/app_colors.dart';
import 'package:marriage_management_app/utils/app_validators.dart';
import 'package:marriage_management_app/widgets/custom_dropdown_btn.dart';
import 'package:marriage_management_app/widgets/custom_elevated_btn.dart';
import 'package:marriage_management_app/widgets/custom_text_form_field.dart';

class Step1Form extends StatefulWidget {
  const Step1Form({super.key});

  @override
  State<Step1Form> createState() => _Step1FormState();
}

class _Step1FormState extends State<Step1Form> {

  final _signUpController = Get.find<SignUpController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity.h,
      width: double.infinity.w,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(16.h),
              Text('susHeading'.tr,
                  style: Theme.of(context).textTheme.titleMedium),
              Gap(16.h),
              Text('susProfileTitle'.tr,
                  style: Theme.of(context).textTheme.bodyMedium),
              Gap(4.h),
              Text('susProfileSubTitle'.tr,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.grey)),
              Gap(8.h),
              _buildProfileCreatedBy(context),
              Gap(16.h),
              Text('susGender'.tr,
                  style: Theme.of(context).textTheme.bodyMedium),
              Gap(4.h),
              Text('susGenderSubTitle'.tr,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.grey)),
              Gap(8.h),
              _buildGender(context),
              Gap(16.h),
              Text('susNameLabel'.tr,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.grey)),
              Gap(4.h),
              CustomTextFormField(
                  controller: _signUpController.fullNameController,
                  hintText: 'susNameHint'.tr),
              Gap(16.h),
              Text(
                'susDOBLabel'.tr,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.grey),
              ),
              Gap(4.h),
              CustomTextFormField(
                controller: _signUpController.dateOfBirthController,
                hintText: 'susDOBHint'.tr,
                readOnly: true,
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.date_range,
                      color: Colors.grey,
                      size: 20.sp,
                    )),
              ),
              Gap(16.h),
              Text('susEmailLabel'.tr,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.grey)),
              Gap(4.h),
              CustomTextFormField(
                  controller: _signUpController.emailController,
                  hintText: 'susEmailHint'.tr),
              Gap(16.h),
              Text('susPasswordLabel'.tr,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.grey)),
              Gap(4.h),
              GetBuilder<SignUpController>(builder: (controller) {
                return CustomTextFormField(
                    controller: controller.passwordController,
                    hintText: 'susPasswordHint'.tr,
                    validator: AppValidators.passwordValidator,
                    obscureText: controller.isObscure,
                    suffixIcon: IconButton(
                        onPressed: () {
                          controller.toggleObscure();
                        },
                        icon: Icon(
                            controller.isObscure
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.grey,
                            size: 20.sp)));
              }),
              Gap(16.h),
              Text('susPhoneLabel'.tr,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.grey)),
              Gap(4.h),
              CustomTextFormField(
                  controller: _signUpController.emailController,
                  keyBoardType: TextInputType.phone,
                  hintText: 'susPhoneHint'.tr),
              Gap(16.h),
              Text('susReligionLabel'.tr,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.grey)),
              Gap(4.h),
              CustomDropdownBtn(
                items: _signUpController.religions,
                hintText: 'susReligionHint'.tr,
                validator: AppValidators.dropdownValidator,
                value: _signUpController.selectedReligion,
                onChanged: (newValue) {
                  setState(() {
                    _signUpController.selectedReligion = newValue;
                  });
                },
              ),
              Gap(32.h),
              CustomElevatedButton(
                  onPressed: () {
                    _signUpController.goToNextStep();
                  }, name: 'susContinueBtn'.tr),
              Gap(16.h),
              Row(
                children: [
                  Icon(Icons.check_box, color: primaryClr),
                  Gap(8.w),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        text: 'I have read and agree to the ',
                        style: Theme.of(context).textTheme.bodySmall,
                        children: [
                          TextSpan(
                            text: 'Terms and Conditions',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                color: Colors.blue,
                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                          TextSpan(
                            text: ' and ',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                color: Colors.blue,
                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Gap(32.h)
            ],
          ),
        ),
      ),
    );
  }

  GetBuilder<SignUpController> _buildGender(BuildContext context) {
    return GetBuilder<SignUpController>(builder: (controller) {
      return Wrap(
        spacing: 12.w,
        children: List.generate(
          controller.gender.length,
              (index) => GestureDetector(
            onTap: () => controller.genderSelection(index),
            child: Container(
              height: 40.h,
              width: 100.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: controller.currentGender == index
                      ? primaryClr
                      : Colors.black12),
              child: Text(controller.gender[index],
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: controller.currentGender == index
                          ? Colors.white
                          : Colors.black)),
            ),
          ),
        ),
      );
    });
  }

  GetBuilder<SignUpController> _buildProfileCreatedBy(BuildContext context) {
    return GetBuilder<SignUpController>(builder: (controller) {
      return Wrap(
        spacing: 12.w,
        runSpacing: 12.h,
        children: List.generate(
          controller.profileCreatedBy.length,
              (index) => GestureDetector(
            onTap: () => controller.profileCreatedBySelection(index),
            child: Container(
              height: 40.h,
              width: 100.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: controller.currentProfileCreatedBy == index
                      ? primaryClr
                      : Colors.black12),
              child: Text(controller.profileCreatedBy[index],
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: controller.currentProfileCreatedBy == index
                          ? Colors.white
                          : Colors.black)),
            ),
          ),
        ),
      );
    });
  }
}
