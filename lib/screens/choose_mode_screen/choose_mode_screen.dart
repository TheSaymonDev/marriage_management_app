import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:marriage_management_app/routes/app_routes.dart';
import 'package:marriage_management_app/screens/choose_mode_screen/widgets/mode_widget.dart';
import 'package:marriage_management_app/utils/app_urls.dart';
import 'package:marriage_management_app/widgets/custom_elevated_btn.dart';

class ChooseModeScreen extends StatelessWidget {
  const ChooseModeScreen({super.key});

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
                  child:
                      Image.asset(AppUrls.getStartedBGImg, fit: BoxFit.cover))),
          SizedBox(
            height: double.infinity.h,
            width: double.infinity.w,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 60.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppUrls.appLogoImg),
                  Spacer(),
                  Text('cmsTitle'.tr,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.white, fontSize: 25.sp)),
                  Gap(50.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ModeWidget(
                          onTap: () {
                            Get.changeThemeMode(ThemeMode.dark);
                          },
                          icon: CupertinoIcons.moon_stars,
                          name: 'cmsDarkMode'.tr),
                      ModeWidget(
                          onTap: () {
                            Get.changeThemeMode(ThemeMode.light);
                          },
                          icon: CupertinoIcons.sun_max,
                          name: 'cmsLightMode'.tr)
                    ],
                  ),
                  Gap(50.h),
                  CustomElevatedBtn(
                      onPressed: () {
                        Get.toNamed(AppRoutes.authScreen);
                      }, name: 'cmsContinueBtn'.tr, height: 90.h)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
