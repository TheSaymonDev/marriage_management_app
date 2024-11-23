import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:marriage_management_app/utils/app_colors.dart';

class ModeWidget extends StatelessWidget {
  final void Function() onTap;
  final IconData icon;
  final String name;

  const ModeWidget(
      {super.key,
      required this.onTap,
      required this.icon,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
              height: 70.h,
              width: 70.w,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: context.isDarkMode? AppColors.darkGreyClr: AppColors.lightGreyClr),
              child: Icon(icon)),
        ),
        Gap(16.h),
        Text(name,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: AppColors.darkFontClr))
      ],
    );
  }
}
