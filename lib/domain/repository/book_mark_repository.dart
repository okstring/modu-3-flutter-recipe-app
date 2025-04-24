import 'package:recipe_app/domain/model/recipe.dart';
import 'package:recipe_app/domain/model/recipe_info.dart';

abstract interface class BookmarkRepository {
  Future<Recipe> toggleFavorite(String id);

  Future<RecipeInfo> toggleRecipeInfoFavorite({required String id});
}
