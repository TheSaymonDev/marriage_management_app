import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:marriage_management_app/screens/help_center_screen/controllers/contact_us_controller.dart';
import 'package:marriage_management_app/utils/app_colors.dart';

class ContactUsWidget extends StatelessWidget {
  const ContactUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity.h,
      width: double.infinity.w,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Column(
        children: [
          _buildListTile(
              context: context,
              onTap: () {
                Get.find<ContactUsController>().makePhoneCall('01643831739');
              },
              icon: FontAwesomeIcons.headset,
              title: 'Customer Care'),
          Gap(8.h),
          _buildListTile(
              context: context,
              onTap: () {
                Get.find<ContactUsController>()
                    .launchInBrowser(Uri.parse('https://softronixs.com/'));
              },
              icon: FontAwesomeIcons.internetExplorer,
              title: 'Website'),
          Gap(8.h),
          _buildListTile(
              context: context,
              onTap: () {
                Get.find<ContactUsController>().launchInBrowser(Uri.parse(
                    'https://www.linkedin.com/'));
              },
              icon: FontAwesomeIcons.linkedin,
              title: 'Linkedin'),
          Gap(8.h),
          _buildListTile(
              context: context,
              onTap: () {
                Get.find<ContactUsController>()
                    .launchInBrowser(Uri.parse('https://x.com/'));
              },
              icon: FontAwesomeIcons.twitter,
              title: 'Twitter'),
          Gap(8.h),
          _buildListTile(
              context: context,
              onTap: () {
                Get.find<ContactUsController>().launchInBrowser(
                    Uri.parse('https://facebook.com/'));
              },
              icon: FontAwesomeIcons.facebook,
              title: 'Facebook'),
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
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
          side: BorderSide(
              color: context.isDarkMode
                  ? AppColors.lightGreyClr
                  : AppColors.darkGreyClr)),
      leading: Icon(icon, size: 20.sp),
      title: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      trailing: Icon(Icons.arrow_right),
    );
  }
}
