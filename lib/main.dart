import 'package:flutter/material.dart';
import 'package:recipe_app/data/data_source/recipe_data_source_impl.dart';
import 'package:recipe_app/data/repository/recipe_repository_impl.dart';
import 'package:recipe_app/presentation/search_recipes/search_recipes_screen.dart';
import 'package:recipe_app/presentation/search_recipes/search_recipes_view_model.dart';
import 'package:recipe_app/ui/color_styles.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.white,
        body: SearchRecipesScreen(
          viewModel: SearchRecipesViewModel(
            recipeRepository: RecipeRepositoryImpl(
              recipeDataSource: RecipeDataSourceImpl(),
            ),
          ),
        ),
      ),
    ),
  );
}
