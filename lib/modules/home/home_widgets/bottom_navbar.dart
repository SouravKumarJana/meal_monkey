import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constants/app_assets.dart';
import '../home_controller.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_strings.dart';
import 'package:flutter_svg/flutter_svg.dart';
class BottomNavBar extends StatelessWidget {
  final HomeController controller;
  const BottomNavBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
      height: Get.height * 0.12,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF000000).withOpacity(0.1),
            blurRadius: 15,
            offset: const Offset(0, -8),
          ),
        ],
      ),
      child: BottomAppBar(
        color: Colors.white,
        elevation: 0,
        notchMargin: 12,
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          //height: Get.height * 0.09,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _navItem(0, AppAssets.menuIconActiveSvg, AppAssets.menuIconInactiveSvg, AppStrings.menu),
              _navItem(1, AppAssets.offerIconActiveSvg, AppAssets.offerIconInactiveSvg, AppStrings.offers),
              const SizedBox(width: 45), 
              _navItem(2, AppAssets.userProfileIconActiveSvg, AppAssets.userProfileIconInactiveSvg, AppStrings.profile),
              _navItem(3, AppAssets.moreIconActiveSvg, AppAssets.moreIconInactiveSvg, AppStrings.more),
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
          SvgPicture.asset(isActive ? activeImg : inactiveImg, height: Get.height * 0.02),
          SizedBox(height: Get.height * 0.006),
          Text(
            label,
            style: TextStyle(
              color: isActive ? AppColors.primaryColor : AppColors.homeInactiveBackgroundColor,
              fontSize: 12,
              fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
