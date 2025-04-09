import 'package:flutter/material.dart';

import '../../ui/color_styles.dart';
import '../../ui/text_styles.dart';

class FBigButton extends StatelessWidget {
  final String text;
  final VoidCallback voidCallback;

  const FBigButton({super.key, required this.text, required this.voidCallback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        voidCallback();
      },
      child: Container(
        width: 315,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.primary100,
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 114,
              height: 24,
              child: Text(
                text,
                style: TextStyles.normalTextBold(),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(width: 11),
            const Icon(Icons.arrow_right_alt, size: 20, color: AppColors.white),
          ],
        ),
      ),
    );
  }
}



