import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constant/assets_icon.dart';
import 'package:hungry/core/functions/navigations.dart';
import 'package:hungry/core/utils/colors.dart';
import 'package:hungry/core/widgets/custom_button.dart';
import 'package:hungry/feature/auth/presentation/pages/login_view.dart';
import 'package:hungry/feature/auth/presentation/widgets/custom_textformfield.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emialController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
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
                    Gap(60),
                    CustomTextFormField(
                      controller: nameController,
                      hint: "Name",
                      isObsecure: false,
                    ),
                    Gap(15),
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
                    CustomTextFormField(
                      controller: confirmPasswordController,
                      hint: "Confirm Password",
                      isObsecure: true,
                    ),
                    Gap(30),
                    CustomButton(
                      text: "Signup",
                      fontWeight: FontWeight.w700,
                      height: 45,
                      fontsize: 17,
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          push(context, LoginView());
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
      ),
    );
  }
}
