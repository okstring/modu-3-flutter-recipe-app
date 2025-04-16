import 'package:recipe_app/data/data_source/recipe_data_source.dart';
import 'package:recipe_app/data/data_source/recipe_data_source_impl.dart';
import 'package:recipe_app/domain/model/recipe.dart';
import 'package:recipe_app/data/mapper/recipe_mapper.dart';

import '../../domain/repository/book_mark_repository.dart';

class BookMarkRepositoryImpl implements BookMarkRepository {
  final RecipeDataSource _recipeDataSource;

  BookMarkRepositoryImpl({RecipeDataSource? recipeDataSource})
    : _recipeDataSource = recipeDataSource ?? RecipeDataSourceImpl();

  @override
  Future<Recipe> toggleFavorite(String id) async {
    final recipeDto = await _recipeDataSource.toggleFavorite(id);
    return recipeDto.toRecipe();
  }
}
