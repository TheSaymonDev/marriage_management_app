import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:marriage_management_app/routes/app_routes.dart';
import 'package:marriage_management_app/screens/sign_in_screen/controllers/sign_in_controller.dart';
import 'package:marriage_management_app/utils/app_colors.dart';
import 'package:marriage_management_app/utils/app_validators.dart';
import 'package:marriage_management_app/widgets/custom_app_bar.dart';
import 'package:marriage_management_app/widgets/custom_elevated_btn.dart';
import 'package:marriage_management_app/widgets/custom_text_form_field.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final _signInController = Get.find<SignInController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Sign In',
        onPressed: () {},
      ),
      body: Container(
        height: double.infinity.h,
        width: double.infinity.w,
        padding: EdgeInsets.symmetric(horizontal: 32.w),
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                Gap(60.h),
                Lottie.asset('assets/lotties/sign_in.json', width: 200.w),
                Text('Marriage Management',
                    style: Theme.of(context).textTheme.bodyLarge),
                Gap(8.h),
                Text('Online marriage media platform',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: secondaryClr)),
                Gap(48.h),
                CustomTextFormField(
                    controller: _signInController.emailController,
                    hintText: 'Email Address',
                    validator: AppValidators.emailValidator),
                Gap(16.h),
                GetBuilder<SignInController>(builder: (controller) {
                  return CustomTextFormField(
                      controller: controller.passwordController,
                      hintText: 'Password',
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
                              color: Colors.grey)));
                }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GetBuilder<SignInController>(
                          builder: (controller) {
                            return Checkbox(
                              value: controller.isChecked,
                              onChanged: (newValue) => controller.toggleIsChecked(newValue!),
                              checkColor: Colors.white,
                            );
                          }
                        ),
                        Text('Remember me',
                            style: Theme.of(context).textTheme.bodySmall)
                      ],
                    ),
                    TextButton(
                        onPressed: () {
                          Get.toNamed(AppRoutes.emailVerificationScreen);
                        },
                        child: Text('Forgot Password')),
                  ],
                ),
                CustomElevatedButton(
                    onPressed: () {
                      Get.toNamed(AppRoutes.homeScreen);
                    },
                    name: 'SIGN IN'),
                Gap(100.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",
                        style: Theme.of(context).textTheme.bodyMedium),
                    TextButton(
                        onPressed: () {
                          Get.toNamed(AppRoutes.signUpScreen);
                        },
                        child: Text('Sign Up'))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
