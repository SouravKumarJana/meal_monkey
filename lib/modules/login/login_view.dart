import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/primary_button.dart';
import '../../../core/widgets/custom_textfield.dart';
import 'login_controller.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/constants/app_text_size.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor, 
      body: SafeArea(
        
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 40),
                  const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: AppTextSize.headingTextSize,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    "Add your details to login",
                    style: TextStyle(
                      fontSize: AppTextSize.subheadingTextSize,
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 30),

                  CustomTextField(
                    hint: AppStrings.elmailLabelatLogin,
                    controller: controller.emailController,
                  ),

                  const SizedBox(height: 20),

                  CustomTextField(
                    hint: AppStrings.passwordLabelatLogin,
                    obscure: true,
                    controller: controller.passwordController,
                  ),

                  const SizedBox(height: 30),

              
                  PrimaryButton(
                    title: AppStrings.login,
                    onPressed: controller.login,
                  ),  

                  const SizedBox(height: 20),

                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      AppStrings.forgotPassword,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: AppTextSize.subheadingTextSize,
                      ),
                    ),
                  ),

                  const SizedBox(height: 40),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        AppStrings.dontHaveAnAccount,
                        style: TextStyle(color: Colors.grey),
                      ),
                      GestureDetector(
                        onTap: controller.goToSignup,
                        child: const Text(
                          AppStrings.signup,
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
      
      ),
    );
  }
}