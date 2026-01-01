import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungry/core/utils/colors.dart';
import 'package:hungry/core/utils/textstyle.dart';

class SerchWidget extends StatelessWidget {
  const SerchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      shadowColor: AppColors.accentColor,
      borderRadius: BorderRadius.circular(15),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(CupertinoIcons.search),
            hint: Text(
              "Search...",
              style: AppTextStyle.getbodyTextStyle(context,
                  color: AppColors.accentColor),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: AppColors.whiteColor)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: AppColors.whiteColor))),
      ),
    );
  }
}
