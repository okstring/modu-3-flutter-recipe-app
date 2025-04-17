import 'package:recipe_app/data/data_source/recipe_data_source.dart';
import 'package:recipe_app/data/mapper/recipe_info_mapper.dart';
import 'package:recipe_app/data/mapper/recipe_mapper.dart';
import 'package:recipe_app/domain/model/recipe.dart';
import 'package:recipe_app/domain/model/recipe_info.dart';
import 'package:recipe_app/domain/repository/recipe_repository.dart';

class RecipeRepositoryImpl implements RecipeRepository {
  final RecipeDataSource _recipeDataSource;

  RecipeRepositoryImpl({required RecipeDataSource recipeDataSource})
    : _recipeDataSource = recipeDataSource;

  @override
  Future<List<Recipe>> getSavedRecipes({String query = ''}) async {
    final savedRecipesDto = await _recipeDataSource.fetchSavedRecipes();
    return savedRecipesDto.map((e) => e.toRecipe()).toList();
  }

  @override
  Future<RecipeInfo> getRecipesInfo({required String id}) async {
    final savedRecipesDto = await _recipeDataSource.fetchRecipeInfo(id: id);
    return savedRecipesDto.toRecipeInfo();
  }
}
