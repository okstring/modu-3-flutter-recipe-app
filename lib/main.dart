import 'package:flutter/material.dart';
import 'package:recipe_app/data/model/ingredient.dart';
import 'package:recipe_app/data/model/recipe.dart';
import 'package:recipe_app/presentation/components/f_big_button.dart';
import 'package:recipe_app/presentation/components/f_fillter_button.dart';
import 'package:recipe_app/presentation/components/f_ingredient_item.dart';
import 'package:recipe_app/presentation/components/f_medium_button.dart';
import 'package:recipe_app/presentation/components/f_rating_button.dart';
import 'package:recipe_app/presentation/components/f_recipe_card.dart';
import 'package:recipe_app/presentation/components/f_small_button.dart';
import 'package:recipe_app/ui/color_styles.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.white,
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 16,
              children: [
                FIngredientItem(
                  ingredient: Ingredient(
                    name: 'Tomatos',
                    weight: '100g',
                    imageUrl: Ingredient.dummyImageUrl,
                  ),
                ),

                FRecipeCart(
                  recipe: Recipe.empty.copyWith(
                    name: '뜨끄은하고 얼크은하고 고기 많이많이 들어가고 사골육수로 끓여낸 김치찌개',
                    estimatedTime: 20,
                    isFavorite: false,
                    makeUserName: 'John Doe',
                    imageUrl: Recipe.dummyImageUrl,
                  ),
                ),

                FRatingButton(text: 'star', isSelected: false),
                FRatingButton(text: 'star', isSelected: true),
                FFilterButton(text: 'foo', isSelected: false),
                FFilterButton(text: 'bar', isSelected: true),
                FBigButton(text: 'Hello', voidCallback: () {}),
                FMediumButton(text: 'Hello', voidCallback: () {}),
                FSmallButton(text: 'Hello', voidCallback: () {}),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
