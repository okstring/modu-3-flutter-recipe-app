import 'package:flutter/material.dart';
import 'package:recipe_app/domain/model/recipe.dart';
import 'package:recipe_app/ui/color_styles.dart';
import 'package:recipe_app/ui/text_styles.dart';

class FSmallRecipeCard extends StatelessWidget {
  final Recipe recipe;
  final VoidCallback? onTap;
  final double? width;

  const FSmallRecipeCard({
    super.key,
    required this.recipe,
    this.onTap,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AspectRatio(
        aspectRatio: 1.0, // 정방형을 위한 1:1 비율 설정
        // LayoutBuilder를 사용하여 부모 위젯의 제약조건에 접근
        child: LayoutBuilder(
          builder: (context, constraints) {
            double cardWidth = constraints.maxWidth;
            double cardHeight = cardWidth;

            return Container(
              width: cardWidth,
              height: cardHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Stack(
                  children: [
                    _buildBackgroundImage(),

                    _buildGradientOverlay(),

                    _buildRate(),

                    _buildBottonText(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Positioned _buildBottonText() {
    return Positioned(
      left: 12,
      right: 12,
      bottom: 12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            recipe.name,
            style: TextStyles.smallerTextBold(),
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          Text(
            'By ${recipe.makeUserName}',
            style: TextStyles.smallerTextRegular(color: AppColors.gray3),
          ),
        ],
      ),
    );
  }

  Positioned _buildRate() {
    return Positioned(
      top: 10,
      right: 10,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
        decoration: BoxDecoration(
          color: AppColors.secondary20,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.star, size: 11, color: AppColors.rating),
            const SizedBox(width: 2.25),
            Text(
              recipe.rate.toString(),
              style: TextStyles.smallerTextRegular(
                color: AppColors.black,
                fontSize: 8,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned _buildGradientOverlay() {
    return Positioned.fill(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.transparent, Colors.black],
          ),
        ),
      ),
    );
  }

  Positioned _buildBackgroundImage() {
    return Positioned.fill(
      child: Image.network(
        recipe.imageUrl,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return Center(
            child: CircularProgressIndicator(
              value:
                  loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                      : null,
            ),
          );
        },
      ),
    );
  }
}
