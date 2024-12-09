import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marriage_management_app/utils/app_colors.dart';

class CustomExpansionTile extends StatelessWidget {
  final String title;
  final String subTitle;
  const CustomExpansionTile(
      {super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        collapsedIconColor: AppColors.primaryClr,
        iconColor: AppColors.primaryClr,
        shape: const RoundedRectangleBorder(
          side: BorderSide.none,
        ),
        title: Text(title, style: Theme.of(context).textTheme.bodyMedium),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              subTitle,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          )
        ]);
  }
}
