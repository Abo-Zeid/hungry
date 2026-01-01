import 'package:flutter/material.dart';
import 'package:hungry/core/utils/colors.dart';
import 'package:hungry/core/utils/textstyle.dart';

class CardItem extends StatelessWidget {
  const CardItem(
      {super.key,
      required this.itemNme,
      required this.itemDesc,
      required this.imageName,
      required this.itemRate});
  final String itemNme;
  final String itemDesc;
  final String imageName;
  final String itemRate;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.whiteColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageName,
              width: 180,
            ),
            Text(
              itemNme,
              style: AppTextStyle.getbodyTextStyle(context,
                  color: AppColors.blackColor, fontWeight: FontWeight.bold),
            ),
            Text(
              itemDesc,
              style: AppTextStyle.getbodyTextStyle(context,
                  color: AppColors.blackColor),
            ),
            Text(
              "⭐ $itemRate",
              style: AppTextStyle.getbodyTextStyle(context,
                  color: AppColors.blackColor),
            ),
          ],
        ),
      ),
    );
  }
}
