import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meal_monkey/modules/home/home_controller.dart';
import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_colors.dart';
Widget homeFab(HomeController controller) {
    return Obx(() {
      bool isHomeActive = controller.selectedIndex.value == -1; 
      return Container(
        height: 75,
        width: 75,
        padding: const EdgeInsets.all(3),
        child: FloatingActionButton(
          backgroundColor: isHomeActive ? AppColors.primaryColor : AppColors.homeInactiveBackgroundColor,
          shape: const CircleBorder(),
          onPressed: () => controller.changeTabIndex(-1),
          elevation: 1,
          child: SvgPicture.asset(
            isHomeActive ? AppAssets.homeIconActiveSvg : AppAssets.homeIconInactiveSvg,
            height: 30,
            color: AppColors.backgroundColor,
          ),
        ),
      );
    });
}