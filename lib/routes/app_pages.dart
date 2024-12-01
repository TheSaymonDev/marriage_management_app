import 'package:get/get.dart';
import 'package:marriage_management_app/routes/app_routes.dart';
import 'package:marriage_management_app/screens/auth_screen/auth_screen.dart';
import 'package:marriage_management_app/screens/choose_mode_screen/choose_mode_screen.dart';
import 'package:marriage_management_app/screens/details_screen/details_screen.dart';
import 'package:marriage_management_app/screens/email_verification_screen/bindings/email_verification_binding.dart';
import 'package:marriage_management_app/screens/email_verification_screen/email_verification_screen.dart';
import 'package:marriage_management_app/screens/get_started_screen/get_started_screen.dart';
import 'package:marriage_management_app/screens/home_screen/bindings/home_binding.dart';
import 'package:marriage_management_app/screens/home_screen/home_screen.dart';
import 'package:marriage_management_app/screens/message_screen/message_screen.dart';
import 'package:marriage_management_app/screens/otp_verification_screen/bindings/otp_verification_binding.dart';
import 'package:marriage_management_app/screens/otp_verification_screen/otp_verification_screen.dart';
import 'package:marriage_management_app/screens/set_password_screen/bindings/set_password_binding.dart';
import 'package:marriage_management_app/screens/set_password_screen/set_password_screen.dart';
import 'package:marriage_management_app/screens/sign_in_screen/bindings/sign_in_binding.dart';
import 'package:marriage_management_app/screens/sign_in_screen/sign_in_screen.dart';
import 'package:marriage_management_app/screens/sign_up_screen/bindings/sign_up_binding.dart';
import 'package:marriage_management_app/screens/sign_up_screen/sign_up_screen.dart';
import 'package:marriage_management_app/screens/upgrade_screen/bindings/upgrade_binding.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.getStartedScreen, page: () => GetStartedScreen()),
    GetPage(name: AppRoutes.chooseModeScreen, page: () => ChooseModeScreen()),
    GetPage(name: AppRoutes.authScreen, page: () => AuthScreen()),
    // GetPage(
    //     name: AppRoutes.noInternetScreen,
    //     page: () => NoInternetScreen(),
    //     binding: NoInternetBinding()),
    GetPage(
        name: AppRoutes.signInScreen,
        page: () => SignInScreen(),
        binding: SignInBinding()),
    GetPage(
        name: AppRoutes.signUpScreen,
        page: () => SignUpScreen(),
        binding: SignUpBinding()),
    GetPage(
        name: AppRoutes.emailVerificationScreen,
        page: () => EmailVerificationScreen(),
        binding: EmailVerificationBinding()),
    GetPage(
        name: AppRoutes.otpVerificationScreen,
        page: () => OtpVerificationScreen(),
        binding: OtpVerificationBinding()),
    GetPage(
        name: AppRoutes.setPasswordScreen,
        page: () => SetPasswordScreen(),
        binding: SetPasswordBinding()),
    GetPage(
        name: AppRoutes.homeScreen,
        page: () => HomeScreen(),
        bindings: [HomeBinding(), UpgradeBinding()]),
    GetPage(name: AppRoutes.messageScreen, page: () => MessageScreen()),
    GetPage(
        name: AppRoutes.detailsScreen,
        page: () => DetailsScreen(),
       )
  ];
}
