import 'package:flutter/material.dart';
import 'package:hyber_market/features/auth/presentation/views/login_view.dart';
import 'package:hyber_market/features/auth/presentation/views/sign_up.dart';
import 'package:hyber_market/features/splash/presentation/views/splash_view.dart';

import '../../features/on_boarding/presentation/views/on_boarding_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => OnBoardingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => LoginView());
    case SignUp.routeName:
      return MaterialPageRoute(builder: (context) => SignUp());
    default:
      return MaterialPageRoute(builder: (context) => Scaffold());
  }
}
