// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:gap/gap.dart';
// import 'package:get/get.dart';
// import 'package:marriage_management_app/screens/sign_up_screen/controllers/sign_up_controller.dart';
// import 'package:marriage_management_app/screens/sign_up_screen/widgets/step1_form.dart';
// import 'package:marriage_management_app/screens/sign_up_screen/widgets/step2_form.dart';
// import 'package:marriage_management_app/screens/sign_up_screen/widgets/step3_form.dart';
//
// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({super.key});
//
//   @override
//   State<SignUpScreen> createState() => _SignUpScreenState();
// }
//
// class _SignUpScreenState extends State<SignUpScreen> {
//   final _signUpController = Get.find<SignUpController>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: _buildAppBar(context),
//       body: PageView(
//         controller: _signUpController.pageController,
//         physics: NeverScrollableScrollPhysics(),
//         children: _buildForms(),
//       ),
//     );
//   }
//
//   List<Widget> _buildForms() {
//     return [
//       Step1Form(),
//       Step2Form(),
//       Step3Form(),
//     ];
//   }
//
//   AppBar _buildAppBar(BuildContext context) {
//     return AppBar(
//       automaticallyImplyLeading: false,
//       toolbarHeight: 56.h,
//       title: Text('susAppbarTitle'.tr,
//           style: Theme.of(context)
//               .textTheme
//               .titleMedium!
//               .copyWith(color: Colors.white)),
//       actions: [
//         GetBuilder<SignUpController>(builder: (controller) {
//           return SizedBox(
//             height: 36.h,
//             child: controller.currentStep == 1
//                 ? OutlinedButton(
//                     style: OutlinedButton.styleFrom(
//                         foregroundColor: Colors.white,
//                         side: BorderSide(color: Colors.white)),
//                     onPressed: () {},
//                     child: Text('susLogInBtn'.tr),
//                   )
//                 : Align(
//                     alignment: Alignment.center,
//                     child: Text('Step ${controller.currentStep}/3',
//                         style: Theme.of(context)
//                             .textTheme
//                             .bodyMedium!
//                             .copyWith(color: Colors.white))),
//           );
//         }),
//         Gap(16.w)
//       ],
//     );
//   }
// }
