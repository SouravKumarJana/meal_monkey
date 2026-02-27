import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../onboarding_sliders_controller.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_text_size.dart';
class SlideContent extends StatelessWidget {
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
      padding: const EdgeInsets.symmetric(horizontal: 40, ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(image, height: Get.height * 0.38),
          
          SizedBox(height: Get.height * 0.085), 

          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: AppTextSize.titleTextSize,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF4A4B4D),
            ),
          ),
          SizedBox(height: Get.height * 0.035),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: AppTextSize.subtitleTextSize,
              color: const Color(0xFF7C7D7E),
              //height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}