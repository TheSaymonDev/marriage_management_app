import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class PlanCard extends StatelessWidget {
  final String planName;
  final List<String> features;
  final String originalPrice;
  final String discountedPrice;
  final Color backgroundColor;
  final BoxBorder border;

  const PlanCard({
    required this.planName,
    required this.features,
    required this.originalPrice,
    required this.discountedPrice,
    required this.backgroundColor,
    required this.border,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(15.r),
            bottomRight: Radius.circular(15.r)),
      ),
      child: Container(
        height: 150.h,
        width: double.infinity.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(15.r),
                bottomRight: Radius.circular(15.r)),
            border: border),
        child: Row(
          children: [
            Container(
              width: 30.w,
              height: double.infinity.h,
              color: backgroundColor,
            ),
            Gap(16.w),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(planName,
                      style: Theme.of(context).textTheme.titleMedium),
                  Gap(10.h),
                  ...features.map((feature) => Padding(
                        padding: EdgeInsets.symmetric(vertical: 3.h),
                        child: Text(
                          "- $feature",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      )),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    originalPrice,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(decoration: TextDecoration.lineThrough),
                  ),
                  Gap(15.h),
                  Text(discountedPrice,
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
