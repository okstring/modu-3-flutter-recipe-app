import 'package:recipe_app/data/dto/recipe_dto.dart';
import 'package:recipe_app/data/dto/recipe_info_dto.dart';

abstract interface class RecipeDataSource {
  Future<List<RecipeDto>> fetchSavedRecipes({String query = ''});

  Future<RecipeInfoDto> fetchRecipeInfo({required String id});

  Future<RecipeDto> toggleFavorite(String id);
}
