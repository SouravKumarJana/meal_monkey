import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_text_size.dart';
class PrimaryButton extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onPressed;

  const PrimaryButton({
    super.key,
    required this.title,
    this.backgroundColor = AppColors.primaryColor,
    this.textColor = AppColors.backgroundColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(color: AppColors.primaryColor, width: 1), 
          ),
        ),
        onPressed: onPressed,
        child: Text(title, style: TextStyle(color: textColor, fontSize: AppTextSize.buttonTextSize, fontWeight: FontWeight.bold)),
      ),
      );
  }
}