import 'package:flutter/material.dart';
import 'package:hungry/core/utils/colors.dart';
import 'package:hungry/core/utils/textstyle.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text(
          "Profile",
          style: AppTextStyle.getTtileTextStyle(context,
              color: AppColors.primaryColor),
        ),
      ),
    );
  }
}