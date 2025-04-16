import 'package:recipe_app/domain/model/recipe.dart';
import 'package:recipe_app/domain/repository/book_mark_repository.dart';
import 'package:recipe_app/domain/repository/recipe_repository.dart';

class GetSavedRecipesUseCase {
  final RecipeRepository _recipeRepository;
  final BookMarkRepository  _bookMarkRepository;

  const GetSavedRecipesUseCase({
    required RecipeRepository recipeRepository,
    required BookMarkRepository bookMarkRepository,
  }) : _recipeRepository = recipeRepository,
       _bookMarkRepository = bookMarkRepository;

  Future<List<Recipe>> getSavedRecipe({String query = ''}) {
    return _recipeRepository.getSavedRecipe(query: query);
  }

  Future<Recipe> toggleFavorite(String id) {
    return _bookMarkRepository.toggleFavorite(id);
  }
}