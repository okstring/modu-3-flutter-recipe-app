import 'package:recipe_app/domain/model/recipe.dart';
import 'package:recipe_app/domain/repository/recipe_repository.dart';

class GetRecipeInfoUseCase {
  final RecipeRepository _recipeRepository;

  const GetRecipeInfoUseCase({
    required RecipeRepository recipeRepository,
  }) : _recipeRepository = recipeRepository;

  Future<List<Recipe>> getRecipeInfo({String query = ''}) {
    return _recipeRepository.getSavedRecipes(query: query);
  }
}