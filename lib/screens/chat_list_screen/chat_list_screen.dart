import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:marriage_management_app/routes/app_routes.dart';
import 'package:marriage_management_app/utils/app_colors.dart';
import 'package:marriage_management_app/widgets/custom_text_form_field.dart';

class ChatListScreen extends StatelessWidget {
  ChatListScreen({super.key});

  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity.h,
        width: double.infinity.w,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            Gap(16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              child: CustomTextFormField(
                  controller: _searchController,
                  hintText: 'Search',
                  suffixIcon: Icon(Icons.search)),
            ),
            Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.messageScreen);
                          },
                          child: Container(
                              color: Colors.white,
                              padding: EdgeInsets.symmetric(horizontal: 16.w),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Stack(
                                        children: [
                                          SizedBox(
                                              height: 55.h,
                                              width: 55.w,
                                              child: const CircleAvatar(
                                                  backgroundColor: Colors.red)),
                                          Positioned(
                                              bottom: 3,
                                              right: 3,
                                              child: CircleAvatar(
                                                  backgroundColor: Colors.green,
                                                  radius: 6.r))
                                        ],
                                      ),
                                      Gap(16.w),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Saymon',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium),
                                          Gap(4.h),
                                          Text('Hello are you home?',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!
                                                  .copyWith(color: Colors.grey))
                                        ],
                                      ),
                                      const Spacer(),
                                      Column(
                                        children: [
                                          Text('1:35PM',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium!
                                                  .copyWith(
                                                      color: Colors.grey)),
                                          Container(
                                              height: 20.h,
                                              width: 20.w,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: primaryClr),
                                              child: Text('1',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleSmall!
                                                      .copyWith(
                                                          color: Colors.white)))
                                        ],
                                      )
                                    ],
                                  ),
                                  Divider(
                                      color: Colors.grey.withValues(alpha: 0.3),
                                      thickness: 1.w)
                                ],
                              )));
                    },
                    separatorBuilder: (context, index) => Gap(16.h),
                    itemCount: 10))
          ],
        ),
      ),
    );
  }
}
