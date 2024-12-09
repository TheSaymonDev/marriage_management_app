import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:marriage_management_app/widgets/custom_expansion_tile.dart';

class FaqWidget extends StatelessWidget {
  const FaqWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity.h,
      width: double.infinity.w,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Column(
        children: [
          CustomExpansionTile(
            title: '1. How does the matchmaking process work?',
            subTitle:
                "Users create profiles with preferences and details. The app's algorithm matches them with suitable profiles based on compatibility and criteria like location, interests, and values.",
          ),
          Gap(8.h),
          CustomExpansionTile(
            title: "2. Is my personal information secure?",
            subTitle:
                "Yes, the app ensures data privacy using encryption and secure servers. Only information you choose to share is visible to others.",
          ),
          Gap(8.h),
          CustomExpansionTile(
            title: "3. Can I communicate with potential matches?",
            subTitle:
                "Yes, you can connect through the in-app messaging feature after a successful match or by upgrading to premium plans for additional benefits.",
          ),
        ],
      ),
    );
  }
}
