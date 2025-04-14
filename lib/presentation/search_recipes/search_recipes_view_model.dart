import 'package:flutter/cupertino.dart';
import 'package:recipe_app/data/model/recipe.dart';
import 'package:recipe_app/data/repository/recipe_repository.dart';
import 'package:recipe_app/presentation/search_recipes/search_recipes_main_state.dart';

class SearchRecipesViewModel with ChangeNotifier {
  final RecipeRepository _recipeRepository;

  SearchRecipesMainState _state = const SearchRecipesMainState();
  SearchRecipesMainState get state => _state;

  SearchRecipesViewModel({
    required RecipeRepository recipeRepository,
  }) : _recipeRepository = recipeRepository;

  Future<void> fetchSearchRecipes() async {
    _state = state.copyWith(isLoading: true);
    _state = state.copyWith(errorMessage: null);
    notifyListeners();

    try {
      final savedRecipes = await _recipeRepository.getSavedRecipe();
      _state = state.copyWith(searchRecipes: savedRecipes);
    } catch (e) {
      _state = state.copyWith(errorMessage: e.toString());
    } finally {
      _state = state.copyWith(isLoading: false);
      notifyListeners();
    }
  }
}