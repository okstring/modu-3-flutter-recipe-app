import 'package:flutter/material.dart';
import 'package:recipe_app/ui/color_styles.dart';
import 'package:recipe_app/ui/text_styles.dart';

class FInputField extends StatelessWidget {
  final String? label;
  final String placeHolder;
  final String value;
  final bool isVisibleSearchIcon;
  final TextEditingController searchController;
  final FocusNode focusNode;
  final void Function(String) onValueChange;

  const FInputField({
    super.key,
    this.label,
    required this.placeHolder,
    required this.value,
    required this.isVisibleSearchIcon,
    required this.onValueChange,
    required this.searchController,
    required this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(minHeight: 40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (label != null)
            Text(
              label ?? '',
              style: TextStyles.smallTextRegular(color: AppColors.black),
            ),

          Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: AppColors.gray4, width: 1.5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                isVisibleSearchIcon
                    ? Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.search,
                        color: AppColors.gray4,
                        size: 18,
                      ),
                    )
                    : const SizedBox.shrink(),

                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: placeHolder,
                      hintStyle: TextStyles.smallerTextRegular(
                        color: AppColors.gray4,
                      ),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 10,
                      ),
                      alignLabelWithHint: true,
                      isDense: true,
                    ),
                    style: TextStyles.smallerTextRegular(
                      color: AppColors.black,
                    ),
                    focusNode: focusNode,
                    controller: searchController,
                    onChanged: onValueChange,
                    expands: false,
                  ),
                ),

                const SizedBox(width: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
