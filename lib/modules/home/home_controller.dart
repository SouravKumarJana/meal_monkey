import 'package:get/get.dart';
import '../../core/constants/app_assets.dart';

class HomeController extends GetxController {
  var selectedIndex = 0.obs;

  final categories = [
    {"name": "Food", "image": AppAssets.foodPng, "count": "120 Items"},
    {"name": "Beverages", "image": AppAssets.beveragesPng, "count": "220 Items"},
    {"name": "Desserts", "image": AppAssets.dessertsPng, "count": "155 Items"},
    {"name": "Promotions", "image": AppAssets.promotionsPng, "count": "25 Items"},
  ];

  void changeTabIndex(int index) {
    selectedIndex.value = index;
  }
}