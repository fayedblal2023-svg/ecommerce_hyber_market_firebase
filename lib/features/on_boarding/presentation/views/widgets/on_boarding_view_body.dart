import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:hyber_market/constants.dart';
import 'package:hyber_market/core/services/shared_preferences_singleton.dart';
import 'package:hyber_market/core/utils/app_colors.dart';
import 'package:hyber_market/core/widgets/custom_button.dart';
import 'package:hyber_market/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';

import '../../../../auth/presentation/views/login_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  int currentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageView(
            currentPage: currentPage,
            pageController: pageController,
          ),
        ),
        DotsIndicator(
          position: currentPage.toDouble(),
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: currentPage == 1
                ? AppColors.primaryColor
                : AppColors.primaryColor.withOpacity(.5),
          ),
        ),
        SizedBox(height: 29),
        Visibility(
          maintainAnimation: true,
          maintainState: true,
          maintainSize: true,
          visible: currentPage == 1 ? true : false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizentalPadding),
            child: CustomButton(
              text: "أبدأ الآن",
              onPressed: () {
                Prefs.setBool(kIsOnBoardingViewSeen, true);
                Navigator.of(context).pushReplacementNamed(LoginView.routeName);
              },
            ),
          ),
        ),
        SizedBox(height: 43),
      ],
    );
  }
}
