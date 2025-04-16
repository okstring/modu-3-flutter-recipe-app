import 'package:flutter/material.dart';
import 'package:recipe_app/ui/color_styles.dart';
import 'package:recipe_app/ui/text_styles.dart';

class FProcedureItem extends StatelessWidget {
  final String description;
  final int index;

  const FProcedureItem({
    super.key,
    required this.description,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.gray4,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Step ${index + 1}',
            style: TextStyles.smallTextBold(color: AppColors.black),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 5),
          Text(
            description,
            style: TextStyles.smallerTextRegular(color: AppColors.gray3),
          ),
        ],
      ),
    );
  }
}
