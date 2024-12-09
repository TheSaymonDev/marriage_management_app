import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:marriage_management_app/utils/app_colors.dart';
import 'package:marriage_management_app/utils/app_urls.dart';
import 'package:marriage_management_app/widgets/custom_app_bar/custom_app_bar_with_title.dart';


class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWithTitle(
          onPressed: (){
            Get.back();
          },
          title: 'About Us'),
      body: Container(
        height: double.infinity.h,
        width: double.infinity.w,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppUrls.appLogoImg,
              width: 250.w,
            ),
            Gap(40.h),
            Text("Marriage Media is a premier matrimonial site in Bangladesh, known for connecting singles seeking compatible life partners. With its focus on values and comprehensive profiles, it has become a trusted platform for finding meaningful relationships.",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: context.isDarkMode? AppColors.lightGreyClr: AppColors.darkGreyClr),
                textAlign: TextAlign.center),
            Gap(24.h),
            Text('Technology Solution Provider',
                style: Theme.of(context).textTheme.bodyMedium),
            Gap(4.h),
            Text('Softronixs System Ltd',
                style: Theme.of(context).textTheme.titleMedium),
            Gap(24.h),
            Image.asset(
              AppUrls.companyLogoImg,
              height: 60.h,
              width: 90.w,
            ),
          ],
        ),
      ),
    );
  }
}
