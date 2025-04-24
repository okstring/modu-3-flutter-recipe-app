import 'package:flutter/material.dart';
import 'package:recipe_app/domain/model/recipe.dart';
import 'package:recipe_app/presentation/components/f_small_recipe_card.dart';
import 'package:recipe_app/presentation/search_recipes/search_recipes_state.dart';

class RecipeGridView extends StatelessWidget {
  final SearchRecipesState state;
  final Function(Recipe) onRecipeTap;
  final int crossAxisCount;
  final double spacing;

  const RecipeGridView({
    super.key,
    required this.onRecipeTap,
    this.crossAxisCount = 2,
    this.spacing = 15.0,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final availableWidth = screenWidth - (spacing * (crossAxisCount + 1));

    final itemWidth = availableWidth / crossAxisCount;

    return Expanded(
      child: GridView.builder(
        itemCount: state.searchRecipes.length,

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: spacing,
          mainAxisSpacing: spacing,
          childAspectRatio: 1.0,
        ),

        itemBuilder: (context, index) {
          final recipe = state.searchRecipes[index];

          return FSmallRecipeCard(
            recipe: recipe,
            onTap: () => onRecipeTap(recipe),
            width: itemWidth,
          );
        },
      ),
    );
  }
}
