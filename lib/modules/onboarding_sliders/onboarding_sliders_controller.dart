import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/app_routes.dart';

class OnboardingSlidersController extends GetxController {
  final pageIndex = 0.obs;
  final pageController = PageController();

  void onChanged(int index) {
    pageIndex.value = index;
  }

  void next() {
    if (pageIndex.value < 2) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Get.offAllNamed(Routes.initialscreen);
    }
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}