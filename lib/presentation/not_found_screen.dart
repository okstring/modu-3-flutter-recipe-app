import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/ui/color_styles.dart';
import 'package:recipe_app/ui/text_styles.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '404',
              style: TextStyles.mediumTextBold(color: AppColors.black),
            ),
            SizedBox(height: 16),
            Text(
              '페이지를 찾을 수 없습니다',
              style: TextStyles.mediumTextBold(color: AppColors.black),
            ),
            SizedBox(height: 32),
            ElevatedButton.icon(
              icon: Icon(Icons.arrow_back),
              label: Text('뒤로 가기'),
              onPressed: () => context.pop(),
            ),
          ],
        ),
      ),
    );
  }
}