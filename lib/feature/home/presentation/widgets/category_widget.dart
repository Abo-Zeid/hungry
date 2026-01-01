import 'package:flutter/material.dart';
import 'package:hungry/core/utils/colors.dart';
import 'package:hungry/core/utils/textstyle.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget(
      {super.key, required this.selectedIndex, required this.category});
  final int selectedIndex;
  final List category;

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
   int selectedIndex=0;

  @override
  void initState() {
    selectedIndex == widget.selectedIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(widget.category.length, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              margin: EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: selectedIndex == index
                    ? AppColors.primaryColor
                    : Color(0xfff3f4f6),
              ),
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Text(
                widget.category[index],
                style: AppTextStyle.getbodyTextStyle(context,
                    color: selectedIndex == index
                        ? AppColors.whiteColor
                        : AppColors.blackColor,
                    fontWeight: FontWeight.w400),
              ),
            ),
          );
        }),
      ),
    );
  }
}
