import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../modules/onboarding_sliders/onboarding_sliders_controller.dart';
import '../../core/constants/app_colors.dart';
class SlideContent extends GetView<OnboardingSlidersController> {
  final String image;
  final String title;
  final String subtitle;

  const SlideContent({
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Image.asset(image, height: 275),

          const SizedBox(height: 24),

          Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: controller.pageIndex.value == index ? 10 : 8,
                    height: controller.pageIndex.value == index ? 10 : 8,
                    decoration: BoxDecoration(
                      color: controller.pageIndex.value == index
                          ? AppColors.primaryColor
                          : Colors.grey.shade400,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              )),

          const SizedBox(height: 30),

          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),

          const SizedBox(height: 25),

          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
              height: 1.5,
            ),
          ),
        
        ],
      ),
    );
  }
}