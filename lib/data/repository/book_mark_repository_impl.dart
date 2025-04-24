import 'package:recipe_app/data/data_source/recipe_data_source.dart';
import 'package:recipe_app/domain/model/recipe.dart';
import 'package:recipe_app/data/mapper/recipe_mapper.dart';
import 'package:recipe_app/data/mapper/recipe_info_mapper.dart';
import 'package:recipe_app/domain/model/recipe_info.dart';
import 'package:recipe_app/domain/repository/book_mark_repository.dart';


class BookmarkRepositoryImpl implements BookmarkRepository {
  final RecipeDataSource _recipeDataSource;

  BookmarkRepositoryImpl({required RecipeDataSource recipeDataSource})
    : _recipeDataSource = recipeDataSource;

  @override
  Future<Recipe> toggleFavorite(String id) async {
    final recipeDto = await _recipeDataSource.toggleFavorite(id: id);
    return recipeDto.toRecipe();
  }

  @override
  Future<RecipeInfo> toggleRecipeInfoFavorite({required String id}) async {
    final recipeInfoDto = await _recipeDataSource.toggleRecipeInfoFavorite(id: id);
    return recipeInfoDto.toRecipeInfo();
  }
}