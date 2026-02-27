import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import '../../routes/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    FlutterNativeSplash.remove();
    navigate();
  }

  void navigate() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offAllNamed(Routes.onboarding);
  }
}
