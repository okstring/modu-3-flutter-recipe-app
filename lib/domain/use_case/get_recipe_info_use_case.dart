import 'package:recipe_app/domain/model/recipe_info.dart';
import 'package:recipe_app/domain/repository/recipe_repository.dart';

class GetRecipeInfoUseCase {
  final RecipeRepository _recipeRepository;

  const GetRecipeInfoUseCase({
    required RecipeRepository recipeRepository,
  }) : _recipeRepository = recipeRepository;

  Future<RecipeInfo> getRecipeInfo({required String id}) {
    return _recipeRepository.getRecipesInfo(id: id);
  }
}