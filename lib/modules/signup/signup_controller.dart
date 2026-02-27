import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_routes.dart';
import '../../../core/constants/app_strings.dart';
class SignupController extends GetxController {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final isLoading = false.obs;

  void signup() {

    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    final confirmPassword = confirmPasswordController.text.trim();

    if (email.isEmpty || password.isEmpty || confirmPassword.isEmpty) {
      Get.snackbar(
        AppStrings.error,
        AppStrings.allFieldsAreRequired,
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    if (password != confirmPassword) {
      Get.snackbar(
        AppStrings.error,
        AppStrings.passwordNotMatched,
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    Get.offAllNamed(Routes.home);
  }

  void goToLogin() {
    Get.back();
  }

  @override
  void onClose() {
    confirmPasswordController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}