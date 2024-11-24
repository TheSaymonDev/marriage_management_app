import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:marriage_management_app/screens/chat_list_screen/chat_list_screen.dart';
import 'package:marriage_management_app/screens/explore_screen/explore_screen.dart';
import 'package:marriage_management_app/screens/home_screen/controllers/bottom_nav_controller.dart';
import 'package:marriage_management_app/screens/profile_screen/profile_screen.dart';
import 'package:marriage_management_app/screens/upgrade_screen/upgrade_screen.dart';
import 'package:marriage_management_app/utils/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static final _screens = [
    const ExploreScreen(),
    ChatListScreen(),
    const UpgradeScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavController>(
      builder: (controller) {
        return Scaffold(
          body: _screens.elementAt(controller.selectedIndex),
          bottomNavigationBar: NavigationBar(
            height: 92.h,
            onDestinationSelected: controller.changeScreen,
            selectedIndex: controller.selectedIndex,
            destinations: [
              _buildNavigationDestination(
                  iconData: Icons.home, label: 'Home'),
              _buildNavigationDestination(
                  iconData: Icons.chat, label: 'Chat'),
              _buildNavigationDestination(
                  iconData: Icons.workspace_premium, label: 'Upgrade'),
              _buildNavigationDestination(
                  iconData: Icons.person, label: 'Profile')
            ],
          ),
        );
      }
    );
  }

  NavigationDestination _buildNavigationDestination({
    required IconData iconData,
    required String label,
  }) {
    return NavigationDestination(
      icon: Icon(iconData, size: 20.sp),
      selectedIcon: Icon(iconData, color: AppColors.primaryClr, size: 25.sp),
      label: label,
    );
  }

}
