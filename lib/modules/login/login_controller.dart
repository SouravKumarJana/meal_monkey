import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/app_routes.dart';
class LoginController extends GetxController {

  // Text Controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // Loading state (optional for future API)
  final isLoading = false.obs;

  void login() {

    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    // Validation
    if (email.isEmpty || password.isEmpty) {
      Get.snackbar(
        "Error",
        "Please fill all fields",
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    // If valid → Navigate
    Get.offAllNamed(Routes.onboarding);
  }

  void goToSignup() {
    Get.toNamed(Routes.signup);
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}