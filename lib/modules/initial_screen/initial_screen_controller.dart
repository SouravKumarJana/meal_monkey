import 'package:get/get.dart';
import '../../routes/app_routes.dart';

class InitialScreenController extends GetxController {

  void goToLogin() {
    Get.toNamed(Routes.login);
  }

  void goToSignup() {
    Get.toNamed(Routes.signup);
  }
}