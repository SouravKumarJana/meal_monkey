import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/constants/app_assets.dart';
import '../../core/widgets/primary_button.dart';
import 'onboarding_sliders_controller.dart';
import 'onboarding_sliders_widgets/slide_content.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/app_strings.dart';
import 'onboarding_sliders_widgets/customdot_indicator.dart';

class OnboardingSlidersView extends StatelessWidget {
  OnboardingSlidersView({super.key});
  final OnboardingSlidersController controller = Get.find<OnboardingSlidersController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.08),
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  PageView(
                    controller: controller.pageController,
                    onPageChanged: controller.onChanged,
                    children: const [
                      SlideContent(
                        image: AppAssets.findFoodYouLoveVectorSvg,
                        title: AppStrings.slider1Title,
                        subtitle: AppStrings.slider1Subtitle,
                      ),
                      SlideContent(
                        image: AppAssets.deliveryVectorSvg,
                        title: AppStrings.slider2Title,
                        subtitle: AppStrings.slider2Subtitle,
                      ),
                      SlideContent(
                        image: AppAssets.liveTrackingVectorSvg,
                        title: AppStrings.slider3Title,
                        subtitle: AppStrings.slider3Subtitle,
                      ),
                    ],
                  ),

                  Positioned(
                    top: Get.height * 0.41,
                    child: CustomDotIndicator(
                      controller: controller,
                      count: 3,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: PrimaryButton(
                title: AppStrings.next,
                onPressed: controller.next,
              ),
            ),
            SizedBox(height: Get.height * 0.15),
          ],
        ),
      ),
    );
  }

  // Widget _buildDot(int index) {
  //   return Obx(() => AnimatedContainer(
  //         duration: const Duration(milliseconds: 300),
  //         height: 8,
  //         width: 8,
  //         margin: const EdgeInsets.symmetric(horizontal: 4),
  //         decoration: BoxDecoration(
  //           shape: BoxShape.circle,
  //           color: controller.pageIndex.value == index
  //               ? AppColors.primaryColor
  //               : const Color(0xFFD6D6D6),
  //         ),
  //       ));
  // }
}