import 'package:get/get.dart';
import '../../modules/splash/splash_binding.dart';
import '../../modules/splash/splash_view.dart';
import '../../modules/login/login_binding.dart';
import '../../modules/login/login_view.dart';
import '../../modules/signup/signup_binding.dart';
import '../../modules/signup/signup_view.dart';
import '../../modules/onboarding_sliders/onboarding_sliders_binding.dart';
import '../../modules/onboarding_sliders/onboarding_sliders_view.dart';
import '../../modules/home/home_binding.dart';
import '../../modules/home/home_view.dart';
import 'app_routes.dart';
import '../../modules/initial_screen/initial_screen_binding.dart';
import '../../modules/initial_screen/intial_screen_view.dart';
class AppPages {
  static final pages = [

    GetPage(
      name: Routes.splash,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.initialscreen,
      page: () => InitialScreenView(),
      binding: InitialScreenBinding(),
    ),
    GetPage(
      name: Routes.login,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),

    GetPage(
      name: Routes.signup,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),

    GetPage(
      name: Routes.onboarding,
      page: () => OnboardingSlidersView(),
      binding: OnboardingSlidersBinding(),
    ),

    GetPage(
      name: Routes.home,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
  ];
}