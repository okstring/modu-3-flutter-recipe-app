import 'package:flutter/cupertino.dart';
import 'package:recipe_app/data/model/recipe.dart';
import 'package:recipe_app/data/repository/recipe_repository.dart';
import 'package:recipe_app/presentation/search_recipes/search_recipes_main_state.dart';
import 'package:recipe_app/presentation/utils/debouncer.dart';

class SearchRecipesViewModel with ChangeNotifier {
  final RecipeRepository _recipeRepository;
  final Debouncer _debouncer;

  SearchRecipesMainState _state = const SearchRecipesMainState();
  SearchRecipesMainState get state => _state;

  SearchRecipesViewModel({
    required RecipeRepository recipeRepository,
    Debouncer? debouncer,
  }) : _recipeRepository = recipeRepository,
       _debouncer = debouncer ?? Debouncer(delay: const Duration(milliseconds: 500));

  Future<void> fetchSearchRecipes() async {
    _state = state.copyWith(isLoading: true, errorMessage: null);
    notifyListeners();

    try {
      final savedRecipes = await _recipeRepository.getSavedRecipe(query: '');
      _state = state.copyWith(searchRecipes: savedRecipes);
    } catch (e) {
      _state = state.copyWith(errorMessage: e.toString());
    } finally {
      _state = state.copyWith(isLoading: false);
      notifyListeners();
    }
  }

  Future<void> fetchSearchRecipesByQuery({required String query}) async {
    _debouncer.run(() async {
      _state = state.copyWith(query: query, isLoading: true, errorMessage: null);
      notifyListeners();

      try {
        final savedRecipes = await _recipeRepository.getSavedRecipe(query: query);
        _state = state.copyWith(searchRecipes: savedRecipes);
      } catch (e) {
        _state = state.copyWith(errorMessage: e.toString());
      } finally {
        _state = state.copyWith(isLoading: false);
        notifyListeners();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _debouncer.dispose();
  }
}