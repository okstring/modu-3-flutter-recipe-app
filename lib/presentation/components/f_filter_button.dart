import 'package:flutter/material.dart';
import 'package:recipe_app/ui/color_styles.dart';
import 'package:recipe_app/ui/text_styles.dart';

// 필터 버튼 위젯
class FFilterButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;
  final bool hasStar;

  const FFilterButton({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
    required this.hasStar,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: IntrinsicWidth(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
          height: 28,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isSelected ? AppColors.primary100 : AppColors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1, color: AppColors.primary100),
          ),
          child: Row(
            spacing: 5,
            children: [
              Text(
                text,
                style: TextStyles.smallerTextRegular(color: isSelected ? AppColors.white : AppColors.primary80)
              ),

              if (hasStar)
                Icon(
                  Icons.star,
                  color: isSelected ? AppColors.white : AppColors.primary80,
                  size: 18,
                )

            ],
          ),
        ),
      ),
    );
  }
}