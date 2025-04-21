import 'package:recipe_app/domain/model/recipe.dart';
import 'package:recipe_app/domain/model/recipe_info.dart';

abstract interface class RecipeRepository {
  Future<List<Recipe>> getSavedRecipes({String query});

  Future<RecipeInfo> getRecipesInfo({required String id});

  Future<void> saveRecentRecipes(List<Recipe> recipes);

  Future<List<Recipe>> getSavedRecentRecipes();
}