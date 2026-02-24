import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/widgets/primary_button.dart';
import '../../../core/widgets/custom_textfield.dart';
import '../../../core/constants/app_colors.dart';
import 'signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({super.key});

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
                "Create Account",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                "Add your details to sign up",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 40),

              CustomTextField(
                hint: "Email",
                controller: controller.emailController,
              ),

              const SizedBox(height: 20),

              CustomTextField(
                hint: "Password",
                obscure: true,
                controller: controller.passwordController,
              ),
              
              const SizedBox(height: 20),

              CustomTextField(
                hint: "Confirm Password",
                obscure: true,
                controller: controller.confirmPasswordController,
              ),

              const SizedBox(height: 30),

              // Signup Button
              Obx(() => PrimaryButton(
                    title: controller.isLoading.value
                        ? "Please wait..."
                        : "Sign Up",
                    onPressed: controller.signup,
                  )),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an Account? ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  GestureDetector(
                    onTap: controller.goToLogin,
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Color(0xFFFF5A00),
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