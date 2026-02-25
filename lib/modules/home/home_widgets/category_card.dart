import 'package:flutter/material.dart';
import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_text_size.dart';
class CategoryCard extends StatelessWidget {
  final Map<String, String> item;
  const CategoryCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: const EdgeInsets.only(left: 20, bottom: 15),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Positioned(
            left: 45,
            right: 15,
            child: Container(
              height: 84,
              decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(42),
                  bottomLeft: Radius.circular(42),
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    blurRadius: 15,
                    offset: const Offset(0, 8),
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 60, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item["name"]!,
                      style: const TextStyle(
                        fontSize: AppTextSize.categoryNameTextSize, 
                        fontWeight: FontWeight.bold, 
                        color: Color(0xFF4A4B4D)
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      item["count"]!,
                      style: const TextStyle(color: Colors.black38, fontSize: AppTextSize.navItemTextSize),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            right: 0,
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  )
                ],
              ),
              child: Center(
                child: Image.asset(
                  AppAssets.arrowPng, 
                  height: 12,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          Positioned(
            left: 0,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                item["image"]!,
                height: 85,
                width: 85,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}