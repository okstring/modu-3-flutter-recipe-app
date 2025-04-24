import 'package:recipe_app/domain/model/recipe_info.dart';
import 'package:recipe_app/domain/repository/recipe_repository.dart';

class UpdateRecipeUseCase {
  final RecipeRepository _recipeRepository;

  UpdateRecipeUseCase({required RecipeRepository recipeRepository})
    : _recipeRepository = recipeRepository;

  Future<RecipeInfo> updateRecipeInfo(RecipeInfo recipeInfo) async {
    return await _recipeRepository.updateRecipeInfo(recipeInfo: recipeInfo);
  }
}
