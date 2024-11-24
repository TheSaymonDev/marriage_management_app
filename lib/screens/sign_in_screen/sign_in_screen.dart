import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:marriage_management_app/routes/app_routes.dart';
import 'package:marriage_management_app/screens/sign_in_screen/controllers/sign_in_controller.dart';
import 'package:marriage_management_app/utils/app_colors.dart';
import 'package:marriage_management_app/widgets/custom_app_bar/custom_app_bar_with_logo.dart';
import 'package:marriage_management_app/widgets/custom_elevated_btn.dart';
import 'package:marriage_management_app/widgets/custom_text_form_field.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWithLogo(onPressed: () {
        Get.back();
      }),
      body: Container(
        height: double.infinity.h,
        width: double.infinity.w,
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Gap(100.h),
              Text('sisTitle'.tr,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 30.sp)),
              Gap(30.h),
              RichText(
                text: TextSpan(
                  text: 'sisSubTitle'.tr,
                  style: Theme.of(context).textTheme.bodySmall,
                  children: [
                    TextSpan(
                      text: 'sisClickBtn'.tr,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: AppColors.primaryClr),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
              Gap(30.h),
              CustomTextFormField(
                  controller: _emailController, hintText: 'sisEmailHint'.tr),
              Gap(15.h),
              GetBuilder<SignInController>(
                builder: (controller) {
                  return CustomTextFormField(
                      controller: _passwordController,
                      hintText: 'sisPasswordHint'.tr,
                      obscureText: controller.isObscure,
                      suffixIcon: IconButton(
                          onPressed: () {
                            controller.toggleObscure();
                          },
                          icon: Icon(
                              controller.isObscure
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              size: 20.sp,
                              color: context.isDarkMode? AppColors.lightGreyClr: AppColors.darkGreyClr))
                  );
                }
              ),
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                    onPressed: () {
                      Get.toNamed(AppRoutes.emailVerificationScreen);
                    },
                    child: Text('sisRecoveryPasswordBtn'.tr,
                        style: Theme.of(context).textTheme.titleMedium)),
              ),
              CustomElevatedBtn(
                  onPressed: () {
                    Get.toNamed(AppRoutes.homeScreen);
                  }, name: 'sisSignInBtn'.tr),
              Gap(50.h),
              Row(
                children: [
                  Expanded(child: Divider(color: context.isDarkMode? Colors.white24: Colors.black26, endIndent: 10.w)),
                  Text('Or', style: Theme.of(context).textTheme.bodySmall),
                  Expanded(child: Divider(color: context.isDarkMode? Colors.white24: Colors.black26, indent: 10.w)),
                ],
              ),
              Gap(30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.google)),
                  Gap(20.w),
                  IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.apple))
                ],
              ),
              Gap(100.h),
              RichText(
                text: TextSpan(
                  text: 'sisNotMember'.tr,
                  style: Theme.of(context).textTheme.titleMedium,
                  children: [
                    TextSpan(
                      text: 'sisRegister'.tr,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.blue),
                      recognizer: TapGestureRecognizer()..onTap = () {
                        Get.toNamed(AppRoutes.signUpScreen);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
