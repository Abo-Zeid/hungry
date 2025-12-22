import 'package:flutter/material.dart';
import 'package:hungry/core/utils/colors.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    required this.isObsecure,
    required this.controller,
  });
  final String hint;
  final bool isObsecure;
  final TextEditingController controller;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool _obscureText;
  @override
  void initState() {
    _obscureText = widget.isObsecure;
    super.initState();
  }

  void toggleIcon() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      cursorHeight: 15,
      cursorColor: AppColors.primaryColor,
      obscureText: _obscureText,
      validator: (v) {
        if (v == null || v.isEmpty) {
          return "please enter ${widget.hint}";
        }
        return null;
      },
      decoration: InputDecoration(
          hintText: widget.hint,
          suffixIcon: widget.isObsecure
              ? GestureDetector(
                  onTap: toggleIcon,
                  child: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                  ))
              : null),
    );
  }
}
