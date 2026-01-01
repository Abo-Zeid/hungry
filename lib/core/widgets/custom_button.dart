import 'package:flutter/material.dart';
import 'package:hungry/core/utils/textstyle.dart';
import 'package:hungry/core/utils/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.color,
    this.width,
    this.height,
    this.textColor,
    required this.text,
    required this.onPressed,
    this.isOutline = false,
    this.fontsize, this.fontWeight,
  });

  final Color? color;
  final double? fontsize;
  final FontWeight? fontWeight;
  final double? width;
  final double? height;
  final Color? textColor;
  final String text;
  final Function()? onPressed;
  final bool isOutline;

  @override
  Widget build(BuildContext context) {
    final Color buttonColor =
        isOutline ? Colors.white : (color ?? AppColors.primaryColor);

    return SizedBox(
      width: width ?? double.infinity,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          side: isOutline ? BorderSide(color: Colors.black) : BorderSide.none,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: AppTextStyle.getbodyTextStyle(
              color: textColor ?? Colors.black,
              context,
              fontSize: fontsize,
              fontWeight: fontWeight),
        ),
      ),
    );
  }
}
