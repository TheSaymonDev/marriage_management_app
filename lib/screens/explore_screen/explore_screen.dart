import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:marriage_management_app/routes/app_routes.dart';
import 'package:marriage_management_app/utils/app_colors.dart';
import 'package:marriage_management_app/utils/app_urls.dart';
import 'package:marriage_management_app/widgets/custom_card.dart';
import 'package:marriage_management_app/widgets/custom_elevated_btn.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
        itemBuilder: (context, index) => CustomCard(child: Column(
          children: [
            GestureDetector(
              onTap: (){
                Get.toNamed(AppRoutes.detailsScreen);
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 12.w, vertical: 12.h),
                child: Row(
                  children: [
                    Container(
                      width: 80.w,
                      height: 80.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          image: DecorationImage(
                              image: AssetImage(AppUrls.demoImg),
                              fit: BoxFit.cover)),
                    ),
                    Gap(15.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('Md. Saymon',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                      color: AppColors.primaryClr)),
                              Gap(8.w),
                              Text('#341622',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall),
                            ],
                          ),
                          Gap(6.h),
                          Text('Software Engineer - Graduate',
                              style:
                              Theme.of(context).textTheme.bodyMedium),
                          Gap(4.h),
                          Text('25 Years, 5ft 5inc',
                              style:
                              Theme.of(context).textTheme.bodyMedium),
                          Gap(4.h),
                          Text('Hanafi, Muslim - Cumilla,BD',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Divider(
              color: context.isDarkMode? AppColors.darkGreyClr: AppColors.lightGreyClr,
              thickness: 1.h,
              height: 0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 12.w, vertical: 12.h),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 30.h,
                      width: 30.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.secondaryClr),
                          shape: BoxShape.circle),
                      child: Icon(Icons.favorite_outline,
                          color: AppColors.secondaryClr, size: 15.sp),
                    ),
                  ),
                  Gap(15.w),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 30.h,
                      width: 30.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.secondaryClr),
                          shape: BoxShape.circle),
                      child: Icon(Icons.chat_bubble_outline,
                          color: AppColors.secondaryClr, size: 15.sp),
                    ),
                  ),
                  Spacer(),
                  CustomElevatedBtn(
                    onPressed: () {},
                    name: 'Send Interest',
                    height: 30.h,
                    width: 100.w,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: AppColors.darkFontClr),
                  )
                ],
              ),
            )
          ],
        )),
        separatorBuilder: (context, index) => Gap(4.h),
        itemCount: 10);
  }
}
