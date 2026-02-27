
import 'package:get/get.dart';
import 'home_widgets/categories.dart';

class HomeController extends GetxController {
  var selectedIndex = 0.obs;
  
  var filteredCategories = <Map<String, String>>[].obs;

  @override
  void onInit() {
    super.onInit();
    filteredCategories.assignAll(categories);
  }

  void changeTabIndex(int index) {
    selectedIndex.value = index;
  }

  void filterSearch(String query) {
    if (query.isEmpty) {
      filteredCategories.assignAll(categories);
    } else {
      filteredCategories.assignAll(
        categories.where((item) => 
          item["name"]!.toLowerCase().contains(query.toLowerCase())
        ).toList(),
      );
    }
  }
}