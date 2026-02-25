import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/widgets/primary_button.dart';
import '../../../core/widgets/custom_textfield.dart';
import '../../../core/constants/app_colors.dart';
import 'signup_controller.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/constants/app_text_size.dart';
class SignupView extends StatelessWidget {
   final SignupController controller = Get.find<SignupController>();
   SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              const SizedBox(height: 40),

              const Text(
                AppStrings.signup,
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: AppTextSize.headingTextSize,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                AppStrings.signupSubHeading,
                style: TextStyle(
                  fontSize: AppTextSize.subheadingTextSize,
                  color: AppColors.grey,
                ),
              ),

              const SizedBox(height: 40),

              CustomTextField(
                hint: AppStrings.email,
                controller: controller.emailController,
              ),

              const SizedBox(height: 20),

              CustomTextField(
                hint: AppStrings.password,
                obscure: true,
                controller: controller.passwordController,
              ),
              
              const SizedBox(height: 20),

              CustomTextField(
                hint: AppStrings.confirmPassword,
                obscure: true,
                controller: controller.confirmPasswordController,
              ),

              const SizedBox(height: 30),

              // Signup Button
              Obx(() => PrimaryButton(
                    title: controller.isLoading.value
                        ? AppStrings.pleseWait
                        : AppStrings.signup,
                    onPressed: controller.signup,
                  )),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    AppStrings.alreadyHaveAnAccount,
                    style: TextStyle(color: AppColors.grey),
                  ),
                  GestureDetector(
                    onTap: controller.goToLogin,
                    child: const Text(
                      AppStrings.login,
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}