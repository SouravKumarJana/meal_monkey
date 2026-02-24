// import 'package:flutter/material.dart';

// class CustomTextField extends StatelessWidget {
//   final String hint;
//   final bool obscure;
//   final TextEditingController controller;

//   const CustomTextField({
//     super.key,
//     required this.hint,
//     required this.controller,
//     this.obscure = false,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       controller: controller,
//       obscureText: obscure,
//       decoration: InputDecoration(
//         hintText: hint,
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constants/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final bool obscure;
  final TextEditingController controller;

  const CustomTextField({
    super.key,
    required this.hint,
    required this.controller,
    this.obscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: AppColors.textFieldHintColor),
        filled: true,
        fillColor: AppColors.grey, 
        contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30), 
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}