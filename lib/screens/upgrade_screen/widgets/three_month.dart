import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:marriage_management_app/screens/upgrade_screen/controllers/plan_controller.dart';
import 'package:marriage_management_app/screens/upgrade_screen/models/plan_model.dart';
import 'package:marriage_management_app/screens/upgrade_screen/widgets/plan_card.dart';
import 'package:marriage_management_app/utils/app_colors.dart';
import 'package:marriage_management_app/widgets/custom_elevated_btn.dart';

class ThreeMonth extends StatelessWidget {
  ThreeMonth({super.key});

  final List<PlanModel> plans = [
    PlanModel(
      name: 'Silver Plan',
      price: '৳1,999',
      originalPrice: '৳3,000',
      features: ['Unlock Messaging'],
    ),
    PlanModel(
      name: 'Gold Plan',
      price: '৳2,499',
      originalPrice: '৳4,000',
      features: ['Unlock Messaging', 'Get Contacts (50)'],
    ),
    PlanModel(
      name: 'Diamond Plan',
      price: '৳5,999',
      originalPrice: '৳8,000',
      features: ['Unlock Messaging', 'Get Contacts (100)', 'Customer Assistance', 'Profile Boost'],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              itemBuilder: (context, index) => GetBuilder<PlanController>(
                  builder: (controller) {
                    return GestureDetector(
                      onTap: ()=> controller.selectionPlan(index),
                      child: PlanCard(
                        planName: plans[index].name,
                        features: plans[index].features,
                        originalPrice: plans[index].originalPrice,
                        discountedPrice: plans[index].price,
                        border: controller.selectedPlan == index
                            ? Border.all(color: AppColors.primaryClr, width: 1.5.h)
                            : Border(),
                        backgroundColor: index == 0
                            ? Color(0xFFC0C0C0)
                            : index == 1
                            ? Color(0xFFD1B000)
                            : Color(0xFFB9F2FF),
                      ),
                    );
                  }
              ),
              separatorBuilder: (context, index) => Gap(4.h),
              itemCount: plans.length,
            ),
          ),
          CustomElevatedBtn(onPressed: (){}, name: 'Pay Now'),
          Gap(16.h),
        ],
      ),
    );
  }
}
