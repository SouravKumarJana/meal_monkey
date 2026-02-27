import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_text_size.dart';
class Header extends StatelessWidget {
  final String title;
  final String imagePath;
  const Header({
    super.key, 
    required this.title, 
    required this.imagePath
    }
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(fontSize: AppTextSize.headingTextSize, fontWeight: FontWeight.bold, color: AppColors.black)),
          SvgPicture.asset(imagePath, height: 25),
        ],
      ),
    );
  }
}