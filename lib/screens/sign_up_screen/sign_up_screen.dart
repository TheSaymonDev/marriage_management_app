import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:marriage_management_app/routes/app_routes.dart';
import 'package:marriage_management_app/screens/sign_up_screen/controllers/sign_up_controller.dart';
import 'package:marriage_management_app/utils/app_colors.dart';
import 'package:marriage_management_app/utils/app_validators.dart';
import 'package:marriage_management_app/widgets/custom_elevated_btn.dart';
import 'package:marriage_management_app/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final _signUpController = Get.find<SignUpController>();

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
                Gap(100.h),
                Lottie.asset('assets/lotties/sign_up.json',width: 200.w),
                Text('Marriage Management', style: Theme.of(context).textTheme.bodyLarge),
                Gap(8.h),
                Text('Online marriage media platform',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: secondaryClr)),
                Gap(48.h),
                CustomTextFormField(
                    controller: _signUpController.fullNameController,
                    hintText: 'Full Name',
                    ),
                Gap(16.h),
                CustomTextFormField(
                    controller: _signUpController.emailController,
                    hintText: 'Email Address',
                    validator: AppValidators.emailValidator),
                Gap(16.h),
                GetBuilder<SignUpController>(builder: (controller) {
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
                Gap(32.h),
                CustomElevatedButton(
                    onPressed: () {

                    },
                    name: 'SIGN UP'),
                Gap(100.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?", style: Theme.of(context).textTheme.bodyMedium),
                    TextButton(onPressed: (){
                      Get.toNamed(AppRoutes.signInScreen);
                    }, child: Text('Sign In'))
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
