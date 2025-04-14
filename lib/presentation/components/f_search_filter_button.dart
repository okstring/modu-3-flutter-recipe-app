import 'package:flutter/material.dart';
import 'package:recipe_app/ui/color_styles.dart';

class FSearchFilterButton extends StatelessWidget {
  final VoidCallback voidCallback;
  const FSearchFilterButton({super.key, required this.voidCallback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: voidCallback,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: AppColors.primary100,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(Icons.filter_alt_outlined, size: 20, color: AppColors.white),
      ),
    );
  }
}
