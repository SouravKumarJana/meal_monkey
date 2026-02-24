import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedIndex = 0.obs;

  final categories = [
    {"name": "Food", "image": "assets/images/food.png", "count": "120 Items"},
    {"name": "Beverages", "image": "assets/images/beverages.png", "count": "220 Items"},
    {"name": "Desserts", "image": "assets/images/desserts.png", "count": "155 Items"},
    {"name": "Promotions", "image": "assets/images/promotions.png", "count": "25 Items"},
  ];

  void changeTabIndex(int index) {
    selectedIndex.value = index;
  }
}