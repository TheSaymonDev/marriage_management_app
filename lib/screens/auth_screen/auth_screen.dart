import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:marriage_management_app/routes/app_routes.dart';
import 'package:marriage_management_app/utils/app_colors.dart';
import 'package:marriage_management_app/utils/app_urls.dart';
import 'package:marriage_management_app/widgets/custom_app_bar/custom_app_bar_with_title.dart';
import 'package:marriage_management_app/widgets/custom_elevated_btn.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWithTitle(onPressed: () {
        Get.back();
      }),
      body: SizedBox(
        height: double.infinity.h,
        width: double.infinity.w,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppUrls.appLogoImg),
              Gap(60.h),
              Text('asTitle'.tr, style: Theme.of(context).textTheme.titleLarge),
              Gap(30.h),
              Text(
                'asSubTitle'.tr,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: context.isDarkMode
                        ? AppColors.lightGreyClr
                        : AppColors.darkGreyClr),
                textAlign: TextAlign.center,
              ),
              Gap(60.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomElevatedBtn(
                      onPressed: () {
                        Get.toNamed(AppRoutes.signUpScreen);
                      },
                      name: 'asRegisterBtn'.tr,
                      width: 150.w,
                      height: 75.h),
                  TextButton(
                      onPressed: () {
                        Get.toNamed(AppRoutes.signInScreen);
                      },
                      child: Text('asSignInBtn'.tr,
                          style: Theme.of(context).textTheme.titleLarge))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
