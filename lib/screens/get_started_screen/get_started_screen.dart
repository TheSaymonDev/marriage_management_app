import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:marriage_management_app/routes/app_routes.dart';
import 'package:marriage_management_app/utils/app_colors.dart';
import 'package:marriage_management_app/utils/app_urls.dart';
import 'package:marriage_management_app/widgets/custom_elevated_btn.dart';


class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity.h,
            width: double.infinity.w,
            child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Colors.black.withValues(alpha: 0.5),
                  BlendMode.darken,
                ),
                child: Image.asset(AppUrls.getStartedBGImg, fit: BoxFit.cover))
          ),
          SizedBox(
            height: double.infinity.h,
            width: double.infinity.w,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 60.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppUrls.appLogoImg),
                  Spacer(),
                  Text('gssTitle'.tr,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.white),
                    textAlign: TextAlign.center,),
                  Gap(30.h),
                  Text(
                    'gssSubTitle'.tr,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!.copyWith(color: AppColors.lightGreyClr),
                    textAlign: TextAlign.center,
                  ),
                  Gap(30.h),
                  CustomElevatedBtn(onPressed: () {
                    Get.toNamed(AppRoutes.chooseModeScreen);
                  }, name: 'gssBtn'.tr, height: 90.h,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
