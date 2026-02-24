import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal_monkey/core/constants/app_strings.dart';
import '../../core/constants/app_assets.dart';
import '../../core/constants/app_colors.dart';
import '../../core/widgets/primary_button.dart';
import 'initial_screen_controller.dart';

class InitialScreenView extends GetView<InitialScreenController> {
  const InitialScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                AppAssets.orangeTopShape,
                width: double.infinity,
              ),
              Positioned(
                top: 315, 
                  child: Image.asset(
                    AppAssets.appLogoPng,
                    height: 150,
                  ),
                ),
            ],
          ),
          const SizedBox(height: 30),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              "Discover the best foods from over 1,000\nrestaurants and fast delivery to your doorstep",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: AppColors.descriptionTextColor,
                height: 1.5,
              ),
            ),
          ),

          const Spacer(),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                PrimaryButton(
                  title: AppStrings.login,
                  onPressed: controller.goToLogin,
                ),
                const SizedBox(height: 20),
                PrimaryButton(
                  title: AppStrings.createAnAccount,
                  backgroundColor: AppColors.backgroundColor, 
                  textColor: AppColors.primaryColor,
                  onPressed: controller.goToSignup,
                ),
              ],
            ),
          ),
          const SizedBox(height: 45),
        ],
      ),
    );
  }
}