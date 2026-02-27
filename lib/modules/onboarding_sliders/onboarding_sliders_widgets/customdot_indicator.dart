import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../onboarding_sliders_controller.dart';
import '../../../core/constants/app_colors.dart';

class CustomDotIndicator extends StatelessWidget {
  final OnboardingSlidersController controller;
  final int count;

  const CustomDotIndicator({
    super.key,
    required this.controller,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            count,
            (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: 8,
              width: 8,
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: controller.pageIndex.value == index
                    ? AppColors.primaryColor
                    : const Color(0xFFD6D6D6),
              ),
            ),
          ),
        ));
  }
}