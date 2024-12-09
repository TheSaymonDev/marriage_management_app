import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:marriage_management_app/routes/app_routes.dart';
import 'package:marriage_management_app/utils/app_colors.dart';
import 'package:marriage_management_app/utils/app_urls.dart';
import 'package:marriage_management_app/widgets/custom_elevated_btn.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Container(
            color: context.isDarkMode
                ? AppColors.darkCardClr
                : AppColors.lightCardClr,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(AppUrls.demoImg),
                  radius: 50.r,
                ),
                Gap(12.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('MD. SAYMON',
                              style: Theme.of(context).textTheme.titleMedium),
                          GestureDetector(
                              onTap: () {
                                Get.toNamed(AppRoutes.detailsUpdateScreen);
                              },
                              child: Icon(Icons.edit, size: 20.sp))
                        ],
                      ),
                      Gap(8.h),
                      Text('#236237',
                          style: Theme.of(context).textTheme.bodyMedium),
                      Gap(8.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Membership - free',
                              style: Theme.of(context).textTheme.bodyMedium),
                          Text('Upgrade Now',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(color: AppColors.primaryClr))
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Gap(16.h),
          _buildListTile(
              context: context,
              onTap: () {},
              icon: Icons.heart_broken,
              title: 'Favourites'),
          _buildListTile(
              context: context,
              onTap: () {
                Get.toNamed(AppRoutes.helpCenterScreen);
              },
              icon: Icons.help,
              title: 'Help Center'),
          _buildListTile(
              context: context,
              onTap: () {
                Get.toNamed(AppRoutes.privacyPolicyScreen);
              },
              icon: Icons.privacy_tip,
              title: 'Privacy Policy'),
          _buildListTile(
              context: context,
              onTap: () {
                Get.toNamed(AppRoutes.aboutUsScreen);
              },
              icon: Icons.info,
              title: 'About Us'),
          _buildListTile(
              context: context,
              onTap: () {},
              icon: Icons.star_rate,
              title: 'Rate Us'),
          _buildListTile(
              context: context,
              onTap: () {
                showCustomLogoutDialog(context);
              },
              icon: Icons.logout,
              title: 'Logout')
        ],
      ),
    );
  }

  ListTile _buildListTile(
      {required BuildContext context,
      required void Function() onTap,
      required IconData icon,
      required String title}) {
    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.symmetric(horizontal: 40.w),
      leading: Icon(icon,
          size: 25.sp,
          color: context.isDarkMode
              ? AppColors.lightGreyClr
              : AppColors.darkGreyClr),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: context.isDarkMode
                ? AppColors.lightGreyClr
                : AppColors.darkGreyClr,
            letterSpacing: 3),
      ),
    );
  }

  void showCustomLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0.r)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primaryClr.withValues(alpha: 0.3),
                  ),
                  child: Icon(Icons.logout,
                      size: 30.sp, color: AppColors.primaryClr),
                ),
                Gap(20.h),
                Text('Already leaving?',
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center),
                Gap(12.h),
                Text(
                    "Your journey toward finding your life partner is important. We’ll be here whenever you’re ready to continue.",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: context.isDarkMode
                            ? AppColors.lightGreyClr
                            : AppColors.darkGreyClr),
                    textAlign: TextAlign.center),
                SizedBox(height: 20),
                CustomElevatedBtn(onPressed: () {}, name: 'Yes, Log out'),
                Gap(10.h),
                TextButton(
                  onPressed: () {},
                  child: Text('No, I am staying',
                      style: Theme.of(context).textTheme.titleMedium),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
