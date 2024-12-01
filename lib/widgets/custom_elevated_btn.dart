import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marriage_management_app/utils/app_colors.dart';

class CustomElevatedBtn extends StatelessWidget {
  final VoidCallback onPressed;
  final String name;
  final double? width;
  final double? height;
  final TextStyle? style;

  const CustomElevatedBtn({
    super.key,
    required this.onPressed,
    required this.name,
    this.width,
    this.height,
    this.style
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity.w,
      height: height ?? 56.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryClr,
            foregroundColor: AppColors.lightBgClr,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.r)),
            padding: EdgeInsets.zero),
        onPressed: onPressed,
        child: Text(name, style: style ?? Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.darkFontClr)),
      ),
    );
  }
}