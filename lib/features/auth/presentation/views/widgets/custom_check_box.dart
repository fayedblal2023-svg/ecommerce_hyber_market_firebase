import 'package:flutter/material.dart';
import 'package:hyber_market/core/utils/app_colors.dart';
import 'package:hyber_market/core/utils/app_images.dart';
import 'package:svg_flutter/svg.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
    required this.isChecked,
    required this.onChecked,
  });
  final bool isChecked;
  final ValueChanged<bool> onChecked;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChecked(!isChecked);
      },
      child: AnimatedContainer(
        width: 24,
        height: 24,
        decoration: ShapeDecoration(
          color: isChecked ? AppColors.primaryColor : Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.50,
              color: isChecked ? Colors.transparent : const Color(0xFFDCDEDE),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        duration: Duration(milliseconds: 100),
        child: isChecked
            ? Padding(
                padding: const EdgeInsets.all(4.0),
                child: SvgPicture.asset(Assets.imagesCheck),
              )
            : SizedBox(),
      ),
    );
  }
}
