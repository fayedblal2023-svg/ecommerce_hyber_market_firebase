import 'package:flutter/material.dart';
import 'package:hyber_market/core/utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    required this.textInputType,
  });
  final String hintText;
  final Widget? suffixIcon;
  final TextInputType textInputType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyles.bold13.copyWith(color: Color(0XFF949D9E)),
        suffixIcon: suffixIcon,
        enabledBorder: buildBorder(),
        filled: true,
        fillColor: Color(0xfff9fafa),
        border: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(width: .1, color: Color(0xFFE6E9E9)),
    );
  }
}
