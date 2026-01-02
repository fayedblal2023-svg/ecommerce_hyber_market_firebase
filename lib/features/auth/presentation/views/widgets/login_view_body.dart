import 'package:flutter/material.dart';
import 'package:hyber_market/constants.dart';
import 'package:hyber_market/core/utils/app_colors.dart';
import 'package:hyber_market/core/utils/app_text_styles.dart';
import 'package:hyber_market/core/widgets/custom_button.dart';
import 'package:hyber_market/core/widgets/custom_text_form_field.dart';
import 'package:hyber_market/features/auth/presentation/views/widgets/or_divider.dart';

import 'dont_have_account_widget.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizentalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextFormField(
              hintText: "البريد الالكتروني",
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              hintText: "كلمة المرور",
              textInputType: TextInputType.visiblePassword,
              suffixIcon: Icon(Icons.remove_red_eye, color: Color(0XFFC9CECF)),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "نسيت كلمة المرور؟",
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            CustomButton(text: "تسجيل الدخول", onPressed: () {}),
            SizedBox(height: 24),
            DontHaveAnAccountWidget(),
            SizedBox(height: 24),
            OrDivider(),
          ],
        ),
      ),
    );
  }
}
