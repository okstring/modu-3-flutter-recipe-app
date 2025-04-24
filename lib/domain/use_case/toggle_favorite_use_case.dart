import 'package:recipe_app/data/repository/book_mark_repository_impl.dart';
import 'package:recipe_app/domain/model/recipe.dart';
import 'package:recipe_app/domain/model/recipe_info.dart';
import 'package:recipe_app/domain/repository/book_mark_repository.dart';

class ToggleFavoriteUseCase {
  final BookmarkRepository _bookmarkRepository;

  ToggleFavoriteUseCase({required BookmarkRepository bookmarkRepository})
    : _bookmarkRepository = bookmarkRepository;

  Future<Recipe> toggleFavorite(String id) {
    return _bookmarkRepository.toggleFavorite(id);
  }

  Future<RecipeInfo> toggleRecipeInfoFavorite(String id) {
    return _bookmarkRepository.toggleRecipeInfoFavorite(id: id);
  }
}
