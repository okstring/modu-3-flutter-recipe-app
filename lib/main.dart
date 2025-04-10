import 'package:flutter/material.dart';
import 'package:recipe_app/data/model/ingredient.dart';
import 'package:recipe_app/presentation/components/f_ingredient_widget.dart';
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
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16,
              children: [
                FIngredientWidget(
                  ingredient: Ingredient(
                    name: 'Tomatos',
                    weight: '100g',
                    imageUrl: Ingredient.dummyImageUrl,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
