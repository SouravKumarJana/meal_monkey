import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../core/constants/app_assets.dart';
import 'splash_controller.dart';

class SplashView extends StatelessWidget {
  SplashView({super.key});
  final SplashController controller = Get.find<SplashController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: SvgPicture.asset(AppAssets.backgroundSvg, fit: BoxFit.cover),
          ),
          Center(
            child: Image.asset(AppAssets.appLogoPng, height: 150)
          ),
        
        ],
      ),
    );
  }
}