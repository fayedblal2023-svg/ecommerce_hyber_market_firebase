import 'package:flutter/material.dart';
import 'package:hyber_market/core/utils/app_colors.dart';
import 'package:hyber_market/core/utils/app_images.dart';
import 'package:hyber_market/core/utils/app_text_styles.dart';
import 'package:hyber_market/features/on_boarding/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
    required this.pageController,
    required this.currentPage, // أضف هذا المتغير
  });

  final PageController pageController;
  final int currentPage; // استلم رقم الصفحة الحالية من الأب

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          // استخدم المتغير الممرر بدلاً من pageController.page
          isVisible: true,
          image: Assets.imagesPageViewItem1Image,
          backgroundimage: Assets.imagesPageViewItem1ImageBackground,
          subtitle: "اكتشف تجربة تسوق فريدة مع HyperHub...",
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("مرحبًا بك في", style: TextStyles.bold23),
              Text(
                "  HUB",
                style: TextStyles.bold23.copyWith(
                  color: AppColors.secondaryColor,
                ),
              ),
              Text(
                "Hyper ",
                style: TextStyles.bold23.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
        PageViewItem(
          isVisible: false,
          image: Assets.imagesPageViewItem2Image,
          backgroundimage: Assets.imagesPageViewItem2ImageBackground,
          subtitle: "نقدم لك أفضل المنتجات المختارة بعناية...",
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("ابحث وتسوق", style: TextStyles.bold23)],
          ),
        ),
      ],
    );
  }
}
