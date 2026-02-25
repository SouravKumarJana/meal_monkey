import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/constants/app_assets.dart';
import '../../core/widgets/primary_button.dart';
import 'onboarding_sliders_controller.dart';
import 'onboarding_sliders_widgets/slide_content.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/app_strings.dart';
class OnboardingSlidersView extends GetView<OnboardingSlidersController> {
  const OnboardingSlidersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [

            Expanded(
              child: PageView(
                controller: controller.pageController,
                onPageChanged: controller.onChanged,
                children: const [
                  SlideContent(
                    image: AppAssets.findFoodYouLoveVector,
                    title: AppStrings.slider1Title,
                    subtitle: AppStrings.slider1Subtitle,
                  ),
                  SlideContent(
                    image: AppAssets.deliveryVector,
                    title: AppStrings.slider2Title,
                    subtitle: AppStrings.slider2Subtitle,
                  ),
                  SlideContent(
                    image: AppAssets.livrTrackingVector,
                    title: AppStrings.slider3Title,
                    subtitle: AppStrings.slider3Subtitle,
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: PrimaryButton(
                  title: 'Next',
                  onPressed: controller.next,
              ),
            ),
            

            const SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}