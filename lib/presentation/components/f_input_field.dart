import 'package:flutter/material.dart';
import 'package:recipe_app/ui/color_styles.dart';
import 'package:recipe_app/ui/text_styles.dart';

class FInputField extends StatelessWidget {
  final String label;
  final String placeHolder;
  final String value;
  final Key _textFieldKey;
  final bool isVisibleSearchIcon;
  final void Function(String) onValueChange;

  const FInputField({
    super.key,
    required this.label,
    required this.placeHolder,
    required this.value,
    required this.isVisibleSearchIcon,
    required this.onValueChange,
    required Key textFieldKey,
  }): _textFieldKey = textFieldKey;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 83,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (label.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(
                label,
                style: TextStyles.smallTextRegular(color: AppColors.black),
              ),
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
                    child: Icon(Icons.search, color: AppColors.gray4, size: 18),
                  )
                : const SizedBox.shrink(),

                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: placeHolder,
                      hintStyle: TextStyles.smallerTextRegular(color: AppColors.gray4),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                      alignLabelWithHint: true,
                      isDense: true,
                    ),
                    style: TextStyles.smallerTextRegular(color: AppColors.black),
                    key: _textFieldKey,
                    controller: TextEditingController(text: value),
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