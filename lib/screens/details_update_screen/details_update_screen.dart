import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:marriage_management_app/utils/app_colors.dart';
import 'package:marriage_management_app/utils/app_urls.dart';
import 'package:marriage_management_app/widgets/custom_app_bar/custom_app_bar_with_logo.dart';
import 'package:marriage_management_app/widgets/custom_card.dart';
import 'package:marriage_management_app/widgets/custom_elevated_btn.dart';
import 'package:marriage_management_app/widgets/info_row.dart';

class DetailsUpdateScreen extends StatelessWidget {
  const DetailsUpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWithLogo(onPressed: () {
        Get.back();
      }),
      body: SizedBox(
        height: double.infinity.h,
        width: double.infinity.w,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300.h,
                width: double.infinity.w,
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.only(bottom: 8.h, right: 12.w),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AppUrls.demoImg), fit: BoxFit.cover)),
                child: TextButton.icon(
                  onPressed: () {},
                  label: Text('Add Photos', style: Theme.of(context).textTheme.bodyMedium),
                  icon: Icon(Icons.add_a_photo, color: context.isDarkMode? Colors.white: Colors.black),
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(context.isDarkMode? Colors.black54: Colors.white54)
                  ),
                ),
              ),
              Gap(16.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Text('Personal Information',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: AppColors.primaryClr, letterSpacing: 3)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('A few lines about myself',
                        style: Theme.of(context).textTheme.bodyLarge),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.edit, size: 20.sp))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Text(
                    'My name is Md. Saymon Islam. I have completed my Diploma in Computer Engineering. I am currently based out of Bangladesh.',
                    style: Theme.of(context).textTheme.bodyMedium),
              ),
              Gap(20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Basic Details',
                        style: Theme.of(context).textTheme.bodyLarge),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.edit, size: 20.sp))
                  ],
                ),
              ),
              InfoRow(title: 'Name', value: 'Md. Saymon Islam'),
              InfoRow(title: 'Age', value: '25 yrs'),
              InfoRow(title: 'Profile Created For', value: 'Self'),
              InfoRow(title: 'Gender', value: 'Male'),
              InfoRow(title: 'Height', value: '5 ft 5 in'),
              InfoRow(title: 'Weight', value: '54 KG'),
              InfoRow(title: 'Marital Status', value: 'Unmarried'),
              InfoRow(title: 'Mother Tongue', value: 'Bengali'),
              InfoRow(title: 'Physical Status', value: 'Normal'),
              InfoRow(title: 'Language Known', value: 'Bengali, English'),
              Gap(20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('What Is This Person Doing?',
                        style: Theme.of(context).textTheme.bodyLarge),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.edit, size: 20.sp))
                  ],
                ),
              ),
              InfoRow(title: 'Education', value: 'Diploma'),
              InfoRow(title: 'Education Detail', value: 'Not Specified'),
              InfoRow(title: 'Employed in', value: 'Not Specified'),
              InfoRow(title: 'Occupation', value: 'Student'),
              Gap(20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Where Is This Person Staying?',
                        style: Theme.of(context).textTheme.bodyLarge),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.edit, size: 20.sp))
                  ],
                ),
              ),
              InfoRow(title: 'Country', value: 'Bangladesh'),
              InfoRow(title: 'Citizenship', value: 'Bangladesh'),
              InfoRow(title: 'State', value: 'Chittagong'),
              InfoRow(title: 'City', value: 'Cumilla'),
              Gap(20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Religious Information',
                        style: Theme.of(context).textTheme.bodyLarge),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.edit, size: 20.sp))
                  ],
                ),
              ),
              InfoRow(title: 'Religion', value: 'Islam'),
              InfoRow(title: 'Sect', value: 'Sunni'),
              Gap(20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Hobbies & Interests',
                        style: Theme.of(context).textTheme.bodyLarge),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.edit, size: 20.sp))
                  ],
                ),
              ),
              InfoRow(title: 'Favourite Cuisine', value: 'Not Specified'),
              InfoRow(title: 'Hobbies', value: 'Not Specified'),
              InfoRow(title: 'Interests', value: 'Not Specified'),
              InfoRow(title: 'Music', value: 'Not Specified'),
              InfoRow(
                  title: 'Sports/Fitness Activities', value: 'Not Specified'),
              Gap(20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Habits',
                        style: Theme.of(context).textTheme.bodyLarge),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.edit, size: 20.sp))
                  ],
                ),
              ),
              InfoRow(title: 'Eating Habits', value: 'Not Specified'),
              InfoRow(title: 'Drinking Habits', value: 'Not Specified'),
              InfoRow(title: 'Smoking Habits', value: 'Not Specified'),
              Gap(20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Contact Details',
                        style: Theme.of(context).textTheme.bodyLarge),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.edit, size: 20.sp))
                  ],
                ),
              ),
              InfoRow(title: 'Contact Number', value: '+880**********'),
              Gap(20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: CustomCard(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                    child: Row(
                      children: [
                        Icon(Icons.lock_person,
                            size: 50.sp, color: AppColors.secondaryClr),
                        Gap(15.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  'Become a premium member & unlock her personal contact details',
                                  style:
                                      Theme.of(context).textTheme.bodyMedium),
                              Gap(8.h),
                              CustomElevatedBtn(
                                  onPressed: () {},
                                  name: 'Upgrade Now',
                                  height: 35.h,
                                  width: 120.w,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(color: Colors.white))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Gap(20.h)
            ],
          ),
        ),
      ),
    );
  }
}
