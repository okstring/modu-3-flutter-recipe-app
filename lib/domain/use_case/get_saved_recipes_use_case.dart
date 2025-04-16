import 'package:recipe_app/data/repository/recipe_repository_impl.dart';
import 'package:recipe_app/domain/model/recipe.dart';
import 'package:recipe_app/domain/repository/recipe_repository.dart';

class GetSavedRecipesUseCase {
  final RecipeRepository _recipeRepository;

  GetSavedRecipesUseCase({RecipeRepository? recipeRepository})
    : _recipeRepository = recipeRepository ?? RecipeRepositoryImpl();

  Future<List<Recipe>> getSavedRecipes({String query = ''}) async {
    return await _recipeRepository.getSavedRecipes(query: query);
  }
}
