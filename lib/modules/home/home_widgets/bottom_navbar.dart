import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constants/app_assets.dart';
import '../home_controller.dart';
import '../../../core/constants/app_colors.dart';
class BottomNavBar extends StatelessWidget {
  final HomeController controller;
  const BottomNavBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 96, 94, 94).withOpacity(0.1),
            blurRadius: 15,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: BottomAppBar(
        color: Colors.white,
        elevation: 0,
        notchMargin: 12,
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _navItem(0, AppAssets.menuIconActivePng, AppAssets.menuIconInactivePng, "Menu"),
              _navItem(1, AppAssets.offerIconActivePng, AppAssets.offerIconInactivePng, "Offers"),
              const SizedBox(width: 45), 
              _navItem(2, AppAssets.userProfileIconActivePng, AppAssets.userProfileIconInactivePng, "Profile"),
              _navItem(3, AppAssets.moreIconActivePng, AppAssets.moreIconInactivePng, "More"),
            ],
          ),
        ),
      ),
    ));
  }
  Widget _navItem(int index, String activeImg, String inactiveImg, String label) {
    bool isActive = controller.selectedIndex.value == index;
    return GestureDetector(
      onTap: () => controller.changeTabIndex(index),
      behavior: HitTestBehavior.opaque,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(isActive ? activeImg : inactiveImg, height: 22),
          const SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(
              color: isActive ? AppColors.primaryColor : AppColors.backgroundColor,
              fontSize: 12,
              fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
