import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'home_controller.dart';
import '../../core/constants/app_assets.dart';
import '../../core/widgets/header.dart';
import '../../core/widgets/search_bar.dart';
import 'home_widgets/category_card.dart';
import 'home_widgets/bottom_navbar.dart';
import 'home_widgets/home_fab.dart';
import 'home_widgets/categories.dart';
import '../../core/constants/app_strings.dart';

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
            Header(title: AppStrings.menu, imagePath: AppAssets.shoppingCardSvg),
            Search_Bar(hintText: AppStrings.searchFood, prefixIconPath: AppAssets.searchSvg),
            //SizedBox(height: Get.height * 0.025),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: Get.height * 0.04,
                    child: SvgPicture.asset(
                      AppAssets.slideBarOrangeSvg,
                      height: Get.height * 0.57, 
                      fit: BoxFit.contain,
                    ),
                  ),
                  
                  Positioned(
                    top: Get.height * 0.04,
                    left: 0,
                    right: 0,
                    bottom: Get.height * 0.055, 
                    child: ClipRect( 
                      child: ListView.builder(
                        padding: const EdgeInsets.only(top: 20, right: 20, bottom: 20),
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          return CategoryCard(categories[index]);
                        },
                      ),
                    ),
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
