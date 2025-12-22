import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constant/assets_icon.dart';
import 'package:hungry/core/functions/navigations.dart';
import 'package:hungry/core/utils/colors.dart';
import 'package:hungry/core/utils/textstyle.dart';
import 'package:hungry/core/widgets/custom_button.dart';
import 'package:hungry/feature/auth/presentation/pages/signup_view.dart';
import 'package:hungry/feature/auth/presentation/widgets/custom_textformfield.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emialController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final GlobalKey<FormState> formkey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Center(
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  Gap(100),
                  SvgPicture.asset(AssetsIcon.logoSvg),
                  Gap(15),
                  Text(
                    "Weclome back to Fast Food World",
                    style: AppTextStyle.getbodymTextStyle(context,
                        color: AppColors.whiteColor),
                  ),
                  Gap(60),
                  CustomTextFormField(
                    controller: emialController,
                    hint: "Emial",
                    isObsecure: false,
                  ),
                  Gap(15),
                  CustomTextFormField(
                    controller: passwordController,
                    hint: "Password",
                    isObsecure: true,
                  ),
                  Gap(15),
                  CustomButton(
                    text: "Login",
                    fontWeight: FontWeight.w700,
                    height: 45,
                    fontsize: 17,
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        push(context, SignUpView());
                      }
                    },
                    isOutline: true,
                    textColor: AppColors.primaryColor,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
