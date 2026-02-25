import 'package:get/get.dart';
import '../../core/constants/app_assets.dart';
import '../../core/constants/app_Strings.dart';
class HomeController extends GetxController {
  var selectedIndex = 0.obs;

  final categories = [
    {"name": AppStrings.food, "image": AppAssets.foodPng, "count": "120 Items"},
    {"name": AppStrings.baverages, "image": AppAssets.beveragesPng, "count": "220 Items"},
    {"name": AppStrings.desserts, "image": AppAssets.dessertsPng, "count": "155 Items"},
    {"name": AppStrings.promotions, "image": AppAssets.promotionsPng, "count": "25 Items"},
  ];

  void changeTabIndex(int index) {
    selectedIndex.value = index;
  }
}