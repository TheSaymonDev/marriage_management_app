import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:marriage_management_app/screens/sign_up_screen/controllers/sign_up_controller.dart';
import 'package:marriage_management_app/utils/app_colors.dart';
import 'package:marriage_management_app/utils/app_validators.dart';
import 'package:marriage_management_app/widgets/custom_dropdown_btn.dart';
import 'package:marriage_management_app/widgets/custom_elevated_btn.dart';
import 'package:marriage_management_app/widgets/custom_text_form_field.dart';

class Step3Form extends StatefulWidget {
  const Step3Form({super.key});

  @override
  State<Step3Form> createState() => _Step3FormState();
}

class _Step3FormState extends State<Step3Form> {
  late List<DropdownItem> _height;

  List<DropdownItem> _createHeightList() {
    List<DropdownItem> heights = [];
    for (int feet = 4; feet <= 7; feet++) {
      for (int inches = 0; inches <= 11; inches++) {
        if (feet == 7 && inches > 0) {
          heights.add(
              DropdownItem(title: 'More than 7 feet', value: 'moreThan7Feet'));
          break; // Maximum height reached
        }
        String heightTitle = inches == 0 ? '$feet\'' : '$feet\' $inches"';
        String heightValue = '$feet\'$inches"';
        heights.add(DropdownItem(title: heightTitle, value: heightValue));
      }
    }
    heights.insert(
        0, DropdownItem(title: 'Less than 4 feet', value: 'lessThan4Feet'));
    return heights;
  }

  @override
  void initState() {
    super.initState();
    _height = _createHeightList();
  }

  final _signUpController = Get.find<SignUpController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity.h,
      width: double.infinity.w,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(16.h),
            Text('susHeightLabel'.tr,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.grey)),
            Gap(4.h),
            CustomDropdownBtn(
              value: _signUpController.selectedHeight,
              validator: AppValidators.dropdownValidator,
              items: _height,
              hintText: 'susHeightHint'.tr,
              onChanged: (newValue) {
                setState(() {
                  _signUpController.selectedHeight = newValue;
                });
              },
            ),
            Gap(16.h),
            Text('susEducationLabel'.tr,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.grey)),
            Gap(4.h),
            CustomDropdownBtn(
              value: _signUpController.selectedEducation,
              validator: AppValidators.dropdownValidator,
              items: _signUpController.educations,
              hintText: 'susEducationHint'.tr,
              onChanged: (newValue) {
                setState(() {
                  _signUpController.selectedEducation = newValue;
                });
              },
            ),
            Gap(16.h),
            Text('susEmployedInLabel'.tr,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.grey)),
            Gap(4.h),
            CustomDropdownBtn(
              value: _signUpController.selectedEmployedIn,
              validator: AppValidators.dropdownValidator,
              items: _signUpController.employedIns,
              hintText: 'susEmployedInHint'.tr,
              onChanged: (newValue) {
                setState(() {
                  _signUpController.selectedEmployedIn = newValue;
                });
              },
            ),
            Gap(16.h),
            Text('susOccupationLabel'.tr,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.grey)),
            Gap(4.h),
            CustomTextFormField(
                controller: _signUpController.occupationController,
                hintText: 'susOccupationHint'.tr),
            Gap(16.h),
            Text('susPhysicalStatusTitle'.tr,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.grey)),
            Gap(8.h),
            _buildPhysicalStatus(context),
            Gap(16.h),
            CustomDropdownBtn(
              value: _signUpController.selectedEthnicity,
              validator: AppValidators.dropdownValidator,
              items: _signUpController.ethnicity,
              hintText: 'susEthnicityHint'.tr,
              onChanged: (newValue) {
                setState(() {
                  _signUpController.selectedEthnicity = newValue;
                });
              },
            ),
            Gap(16.h),
            Text('susAboutMeLabel'.tr,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.grey)),
            Gap(4.h),
            CustomTextFormField(
                controller: _signUpController.aboutMeController,
                maxLines: 5,
                hintText: 'susAboutMeHint'.tr),
            Gap(32.h),
            CustomElevatedButton(
                onPressed: () {
                  _signUpController.goToNextStep();
                }, name: 'susContinueBtn'.tr),
            Gap(32.h)
          ],
        ),
      ),
    );
  }

  GetBuilder<SignUpController> _buildPhysicalStatus(BuildContext context) {
    return GetBuilder<SignUpController>(builder: (controller) {
      return Wrap(
        spacing: 12.w,
        runSpacing: 12.h,
        children: List.generate(
          controller.physicalStatus.length,
          (index) => GestureDetector(
            onTap: () => controller.physicalStatusSelection(index),
            child: Container(
             padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: controller.currentPhysicalStatus == index
                      ? primaryClr
                      : Colors.black12),
              child: Text(controller.physicalStatus[index],
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: controller.currentPhysicalStatus == index
                          ? Colors.white
                          : Colors.black)),
            ),
          ),
        ),
      );
    });
  }
}
