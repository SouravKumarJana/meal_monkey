import 'package:get/get.dart';
import 'onboarding_sliders_controller.dart';

class OnboardingSlidersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingSlidersController());
  }
}