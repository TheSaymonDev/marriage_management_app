import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:marriage_management_app/localizations/app_localization.dart';
import 'package:marriage_management_app/routes/app_pages.dart';
import 'package:marriage_management_app/utils/app_colors.dart';
import 'package:marriage_management_app/utils/app_initial_bindings.dart';

class MyApp extends StatelessWidget {

  final String? initialRoute;
  const MyApp({super.key, this.initialRoute});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(416, 886),
      builder: (_, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        translations: AppLocalization(),
        fallbackLocale: const Locale('en', 'US'),
        initialRoute: initialRoute,
        getPages: AppPages.pages,
        initialBinding: AppInitialBindings(),
        theme: ThemeData(
          brightness: Brightness.light,
          scaffoldBackgroundColor: lightBgClr,
          useMaterial3: true,
          fontFamily: 'Noto Sans Bengali',
          colorScheme: const ColorScheme(
              brightness: Brightness.light,
              primary: primaryClr,
              onPrimary: lightFontClr,
              secondary: lightCardClr,
              onSecondary: lightFontClr,
              error: Color(0xFFFF3131),
              onError: lightBgClr,
              surface: lightCardClr,
              onSurface: lightFontClr),
          textTheme: TextTheme(
            bodyLarge:
            TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w400, height: 1),
            bodyMedium:
            TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w400, height: 1),
            bodySmall:
            TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400, height: 1),
            titleLarge:
            TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w700, height: 1),
            titleMedium:
            TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700, height: 1),
            titleSmall:
            TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w700, height: 1),
          ),
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: primaryClr.withValues(alpha: 0.1),
            hintStyle: TextStyle(fontSize: 20.sp, color: Colors.grey, fontFamily: 'Noto Sans Bengali', fontWeight: FontWeight.w400),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: primaryClr, width: 2.w),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: primaryClr, width: 2.w),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: primaryClr, width: 2.w),
            ),
          )
      ),
      ),
    );
  }
}