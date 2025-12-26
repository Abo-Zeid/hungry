import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hungry/core/constant/assets_icon.dart';
import 'package:hungry/core/functions/navigations.dart';
import 'package:hungry/core/utils/colors.dart';
import 'package:hungry/feature/bottom_nav_bar.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      // ignore: use_build_context_synchronously
      push(context, BottomNavBarView());
    });
    super.initState();
  }

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
