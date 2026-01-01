import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constant/assets_icon.dart';
import 'package:hungry/core/utils/colors.dart';
import 'package:hungry/core/utils/textstyle.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              AssetsIcon.logoSvg,
              colorFilter:
                  ColorFilter.mode(AppColors.primaryColor, BlendMode.srcIn),
              height: 35,
            ),
            Gap(5),
            Text(
              "hello, Mahmoud Nabil",
              style: AppTextStyle.getbodyTextStyle(context,
                  color: AppColors.accentColor, fontWeight: FontWeight.w700),
            )
          ],
        ),
        Spacer(),
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage("assets/images/profile.png"),
        ),
      ],
    );
  }
}
