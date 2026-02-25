import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';
import '../../core/constants/app_assets.dart';
import '../../core/widgets/header.dart';
import '../../core/widgets/search_bar.dart';
import 'home_widgets/category_card.dart';
import 'home_widgets/bottom_navbar.dart';
import 'home_widgets/home_fab.dart';
import 'home_widgets/categories.dart';
class HomeView extends  StatelessWidget {
  final controller = Get.find<HomeController>();
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Header(title: "Menu", imagePath: AppAssets.shoppingCardPng),
            Search_Bar(hintText: "Search food", prefixIconPath: AppAssets.searchPng),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 32,
                    child: Image.asset(
                      AppAssets.slideBarOrangepng,
                      height: 450, 
                      fit: BoxFit.contain,
                    ),
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.only(top: 52, right: 20, bottom: 100),
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return CategoryCard(categories[index]);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(controller: controller),
      floatingActionButton: homeFab(controller),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

}
