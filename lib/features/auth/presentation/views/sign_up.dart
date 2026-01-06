import 'package:flutter/material.dart';
import 'package:hyber_market/core/widgets/custom_app_bar.dart';
import 'package:hyber_market/features/auth/presentation/views/widgets/sign_up_view_body.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  static const routeName = "signup";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: "حساب جديد"),
      body: SignUpViewBody(),
    );
  }
}
