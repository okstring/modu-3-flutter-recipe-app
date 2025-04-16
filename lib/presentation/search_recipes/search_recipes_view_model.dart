import 'package:flutter/cupertino.dart';
import 'package:recipe_app/data/repository/recipe_repository.dart';
import 'package:recipe_app/presentation/search_recipes/filter_search_state.dart';
import 'package:recipe_app/presentation/search_recipes/search_recipes_main_state.dart';
import 'package:recipe_app/presentation/utils/debouncer.dart';

class SearchRecipesViewModel with ChangeNotifier {
  final RecipeRepository _recipeRepository;
  final Debouncer _debouncer;

  SearchRecipesMainState _searchRecipesMainState = const SearchRecipesMainState();
  SearchRecipesMainState get searchRecipesMainState => _searchRecipesMainState;

  FilterSearchState _filterSearchState = FilterSearchState();
  FilterSearchState get filterSearchState => _filterSearchState;

  set filterSearchState(FilterSearchState value) {
    _filterSearchState = value;
    notifyListeners();
  }

  SearchRecipesViewModel({
    required RecipeRepository recipeRepository,
    Debouncer? debouncer,
  }) : _recipeRepository = recipeRepository,
       _debouncer = debouncer ?? Debouncer(delay: const Duration(milliseconds: 500));

  Future<void> fetchSearchRecipes() async {
    _searchRecipesMainState = searchRecipesMainState.copyWith(isLoading: true, errorMessage: null);
    notifyListeners();

    try {
      final savedRecipes = await _recipeRepository.getSavedRecipe(query: '');
      _searchRecipesMainState = searchRecipesMainState.copyWith(searchRecipes: savedRecipes);
    } catch (e) {
      _searchRecipesMainState = searchRecipesMainState.copyWith(errorMessage: e.toString());
    } finally {
      _searchRecipesMainState = searchRecipesMainState.copyWith(isLoading: false);
      notifyListeners();
    }
  }

  Future<void> fetchSearchRecipesByQuery({required String query}) async {
    _debouncer.run(() async {
      _searchRecipesMainState = searchRecipesMainState.copyWith(query: query, isLoading: true, errorMessage: null);
      notifyListeners();

      try {
        final savedRecipes = await _recipeRepository.getSavedRecipe(query: query);
        _searchRecipesMainState = searchRecipesMainState.copyWith(searchRecipes: savedRecipes);
      } catch (e) {
        _searchRecipesMainState = searchRecipesMainState.copyWith(errorMessage: e.toString());
      } finally {
        _searchRecipesMainState = searchRecipesMainState.copyWith(isLoading: false);
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