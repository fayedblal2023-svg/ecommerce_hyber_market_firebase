import 'package:flutter/material.dart';
import 'package:hyber_market/constants.dart';
import 'package:hyber_market/core/widgets/custom_button.dart';
import 'package:hyber_market/core/widgets/custom_text_form_field.dart';
import 'package:hyber_market/features/auth/presentation/views/widgets/have_an_account_widget.dart';
import 'package:hyber_market/features/auth/presentation/views/widgets/terms_and_conditions_widget.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizentalPadding),
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextFormField(
              hintText: "الإسم كامل",
              textInputType: TextInputType.name,
            ),
            SizedBox(height: 24),
            CustomTextFormField(
              hintText: "البريد الإلكتروني",
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(height: 24),
            CustomTextFormField(
              hintText: "كلمة المرور",
              textInputType: TextInputType.visiblePassword,
              suffixIcon: Icon(Icons.remove_red_eye),
            ),
            SizedBox(height: 24),
            TermsAndConditionsWidget(),
            SizedBox(height: 24),
            CustomButton(text: "إنشاء حساب جديد", onPressed: () {}),
            SizedBox(height: 26),
            HaveAnAccountWidget(),
          ],
        ),
      ),
    );
  }
}
