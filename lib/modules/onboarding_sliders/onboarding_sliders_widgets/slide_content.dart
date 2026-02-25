import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../onboarding_sliders_controller.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_text_size.dart';
class SlideContent extends GetView<OnboardingSlidersController> {
  final String image;
  final String title;
  final String subtitle;

  const SlideContent({
    super.key, 
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
                          : AppColors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              )),

          const SizedBox(height: 30),

          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: AppTextSize.titleTextSize,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),

          const SizedBox(height: 25),

          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: AppTextSize.subtitleTextSize,
              color: Colors.grey,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}