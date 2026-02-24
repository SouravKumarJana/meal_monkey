import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';
import '../../core/constants/app_assets.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(),
            _buildSearchBar(),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 20,
                    child: Image.asset(
                      AppAssets.slideBarOrangepng,
                      height: 450, 
                      fit: BoxFit.contain,
                    ),
                  ),
                  ListView.builder(
                    padding: const EdgeInsets.only(top: 20, right: 20),
                    itemCount: controller.categories.length,
                    itemBuilder: (context, index) {
                      return _buildCategoryCard(controller.categories[index]);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNav(),
      floatingActionButton: _buildHomeFab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Menu", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF4A4B4D))),
          Image.asset(AppAssets.shoppingCardPng, height: 25),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search food",
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(AppAssets.searchPng, height: 20),
          ),
          filled: true,
          fillColor: const Color(0xFFF2F2F2),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
        ),
      ),
    );
  }

  Widget _buildCategoryCard(Map<String, String> item) {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(left: 20, bottom: 15),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Positioned(
            left: 50,
            right: 0,
            child: Container(
              height: 84,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40), bottomLeft: Radius.circular(40),
                  topRight: Radius.circular(15), bottomRight: Radius.circular(15),
                ),
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 10, offset: const Offset(0, 5))],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 60, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item["name"]!, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF4A4B4D))),
                        Text(item["count"]!, style: const TextStyle(color: Colors.black38, fontSize: 12)),
                      ],
                    ),
                    const Icon(Icons.arrow_forward_ios, color: Color(0xFFFF5722), size: 16),
                  ],
                ),
              ),
            ),
          ),
          Image.asset(item["image"]!, height: 85),
        ],
      ),
    );
  }

  Widget _buildBottomNav() {
    
    return Obx(() => BottomAppBar(
          notchMargin: 10,
          child: SizedBox(
            height: 75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _navItem(0, AppAssets.menuIconActivePng, AppAssets.menuIconInactivePng, "Menu"),
                _navItem(1, AppAssets.offerIconActivePng, AppAssets.offerIconInactivePng, "Offers"),
                const SizedBox(width: 45), // Space for Home FAB
                _navItem(2, AppAssets.userProfileIconActivePng, AppAssets.userProfileIconInactivePng, "Profile"),
                _navItem(3, AppAssets.moreIconActivePng, AppAssets.moreIconInactivePng, "More"),
              ],
            ),
          ),
        ));
  }

  Widget _navItem(int index, String activeImg, String inactiveImg, String label) {
    bool isActive = controller.selectedIndex.value == index;
    return GestureDetector(
      onTap: () => controller.changeTabIndex(index),
      behavior: HitTestBehavior.opaque,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(isActive ? activeImg : inactiveImg, height: 22),
          const SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(
              color: isActive ? const Color(0xFFFF5722) : const Color(0xFFB6B7B7),
              fontSize: 12,
              fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHomeFab() {
    return Obx(() {
      bool isHomeActive = controller.selectedIndex.value == -1; 
      return Container(
        height: 75,
        width: 75,
        decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        padding: const EdgeInsets.all(5),
        child: FloatingActionButton(
          backgroundColor: isHomeActive ? const Color(0xFFFF5722) : const Color(0xFFB6B7B7),
          onPressed: () => controller.changeTabIndex(-1),
          elevation: 4,
          child: Image.asset(
            isHomeActive ? AppAssets.homeIconActivePng : AppAssets.homeIconInactivePng,
            height: 30,
            color: Colors.white, // Tinting the asset white to match the UI screenshot
          ),
        ),
      );
    });
  }
}