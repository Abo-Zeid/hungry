import 'package:flutter/material.dart';
import 'package:hungry/core/utils/colors.dart';
import 'package:lottie/lottie.dart';

showeErrorDialog(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: Colors.red,
    content: const Text("Error"),
  ));
}

showeSuccesDialog(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: AppColors.primaryColor,
    content: const Text("Succes"),
  ));
}

showLoadingDialog(BuildContext context) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return Lottie.asset('assets/images/loading.json',
            width: 20, height: 20);
      });
}
