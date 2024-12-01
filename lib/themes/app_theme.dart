import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marriage_management_app/utils/app_colors.dart';

final lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.lightBgClr,
    useMaterial3: true,
    fontFamily: 'Satoshi',
    primaryColor: AppColors.primaryClr,
    colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.primaryClr,
        onPrimary: AppColors.darkFontClr,
        secondary: AppColors.lightCardClr,
        onSecondary: AppColors.lightFontClr,
        error: AppColors.redClr,
        onError: AppColors.lightBgClr,
        surface: AppColors.lightCardClr,
        onSurface: AppColors.lightFontClr),
    textTheme: TextTheme(
      bodyLarge:
      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w400, height: 1),
      bodyMedium:
      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400, height: 1),
      bodySmall:
      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400, height: 1),
      titleLarge:
      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700, height: 1),
      titleMedium:
      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700, height: 1),
      titleSmall:
      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700, height: 1),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(fontSize: 16.sp, color: AppColors.darkGreyClr, fontWeight: FontWeight.w400),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.r),
        borderSide: BorderSide(color: Colors.black12, width: 1.w),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.r),
        borderSide: BorderSide(color: Colors.black12, width: 1.w),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.r),
        borderSide: BorderSide(color: Colors.black12, width: 1.w),
      ),
    ),
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.white
    ),
  navigationBarTheme: NavigationBarThemeData(
    backgroundColor: Colors.white,
    indicatorColor: AppColors.primaryClr.withValues(alpha: 0.3)
  )
);

final darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.darkBgClr,
    fontFamily: 'Satoshi',
    useMaterial3: true,
    primaryColor: AppColors.primaryClr,
    colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: AppColors.primaryClr,
        onPrimary: AppColors.darkFontClr,
        secondary: AppColors.darkCardClr,
        onSecondary: AppColors.darkFontClr,
        error: AppColors.redClr,
        onError: AppColors.lightBgClr,
        surface: AppColors.darkCardClr,
        onSurface: AppColors.darkFontClr),
    textTheme: TextTheme(
      bodyLarge:
      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w400, height: 1),
      bodyMedium:
      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400, height: 1),
      bodySmall:
      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400, height: 1),
      titleLarge:
      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700, height: 1),
      titleMedium:
      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700, height: 1),
      titleSmall:
      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700, height: 1),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(fontSize: 16.sp, color: AppColors.lightGreyClr, fontWeight: FontWeight.w400),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.r),
        borderSide: BorderSide(color: Colors.white24, width: 1.w),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.r),
        borderSide: BorderSide(color: Colors.white24, width: 1.w),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.r),
        borderSide: BorderSide(color: Colors.white24, width: 1.w),
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.darkCardClr,
    ),
    navigationBarTheme: NavigationBarThemeData(
        backgroundColor: AppColors.darkCardClr,
        indicatorColor: AppColors.primaryClr.withValues(alpha: 0.3)
    )
);
