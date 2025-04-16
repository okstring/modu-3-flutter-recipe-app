import 'package:flutter/cupertino.dart';
import 'package:recipe_app/domain/use_case/get_saved_recipes_use_case.dart';
import 'package:recipe_app/presentation/saved_recipe/saved_recipes_state.dart';

class SavedRecipesViewModel with ChangeNotifier {
  final GetSavedRecipesUseCase _getSavedRecipesUseCase;
  SavedRecipesState _state = SavedRecipesState();
  SavedRecipesState get state => _state;

  SavedRecipesViewModel({
    required GetSavedRecipesUseCase getSavedRecipesUseCase,
  }) : _getSavedRecipesUseCase = getSavedRecipesUseCase;

  Future<void> fetchSavedRecipes() async {
    _state = state.copyWith(isLoading: true, errorMessage: null);
    notifyListeners();

    try {
      final savedRecipes = await _getSavedRecipesUseCase.getSavedRecipes();
      _state = state.copyWith(savedRecipes: savedRecipes);
    } catch (e) {
      _state = state.copyWith(errorMessage: e.toString());
    } finally {
      _state = state.copyWith(isLoading: false);
      notifyListeners();
    }
  }


  Future<void> toggleFavorite(String id) async {
    _state = state.copyWith(isLoading: true, errorMessage: null);
    notifyListeners();

    try {
      final toggledRecipe = await _getSavedRecipesUseCase.toggleFavorite(id);
      final index = state.savedRecipes.indexWhere((recipe) => recipe.id == id);
      _state = state.copyWith(savedRecipes: List.from(state.savedRecipes)..removeAt(index)..insert(index, toggledRecipe));
    } catch (e) {
      _state = state.copyWith(errorMessage: e.toString());
    } finally {
      _state = state.copyWith(isLoading: false);
      notifyListeners();
    }
  }
}
