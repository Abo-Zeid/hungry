import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hungry/core/constant/assets_icon.dart';
import 'package:hungry/core/utils/colors.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          children: [
            Spacer(flex: 1),
            SvgPicture.asset(AssetsIcon.logoSvg),
            Spacer(flex: 1),
            Image.asset("assets/splash/splash.png")
          ],
        ),
      ),
    );
  }
}
