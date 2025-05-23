import 'package:flutter/material.dart';
import 'package:recipe_app/domain/model/type/tabs_type.dart';
import 'package:recipe_app/domain/use_case/get_recipe_info_use_case.dart';
import 'package:recipe_app/domain/use_case/toggle_favorite_use_case.dart';
import 'package:recipe_app/domain/use_case/update_recipe_use_case.dart';
import 'package:recipe_app/presentation/ingredient/ingredient_state.dart';

class IngredientViewModel extends ChangeNotifier {
  final GetRecipeInfoUseCase _getRecipeInfoUseCase;
  final ToggleFavoriteUseCase _toggleFavoriteUseCase;
  final UpdateRecipeUseCase _updateRecipeUseCase;

  IngredientState _state;

  IngredientState get state => _state;

  IngredientViewModel({
    required UpdateRecipeUseCase updateRecipeUseCase,
    required ToggleFavoriteUseCase toggleFavoriteUseCase,
    required IngredientState state,
    required GetRecipeInfoUseCase getRecipeInfoUseCase,
  }) : _state = state,
       _getRecipeInfoUseCase = getRecipeInfoUseCase,
       _toggleFavoriteUseCase = toggleFavoriteUseCase,
       _updateRecipeUseCase = updateRecipeUseCase {
    getRecipesInfo(state.id);
  }

  Future<void> getRecipesInfo(String id) async {
    _state = state.copyWith(isLoading: true, errorMessage: null);
    notifyListeners();

    try {
      final recipeInfo = await _getRecipeInfoUseCase.getRecipeInfo(id: id);
      _state = state.copyWith(recipeInfo: recipeInfo);
    } catch (e) {
      _state = state.copyWith(errorMessage: e.toString());
    } finally {
      _state = state.copyWith(isLoading: false);
      notifyListeners();
    }
  }

  void changeTabsType(int index) {
    final changedTabs = TabsType.values.firstWhere((e) => e.index == index);
    _state = state.copyWith(tabsType: changedTabs);
    notifyListeners();
  }

  Future<void> toggleRecipeInfoFavorite(String id) async {
    _state = state.copyWith(isLoading: true, errorMessage: null);
    notifyListeners();

    try {
      final toggledRecipeInfo = await _toggleFavoriteUseCase
          .toggleRecipeInfoFavorite(id);
      _state = state.copyWith(recipeInfo: toggledRecipeInfo);
    } catch (e) {
      _state = state.copyWith(errorMessage: e.toString());
    } finally {
      _state = state.copyWith(isLoading: false);
      notifyListeners();
    }
  }

  Future<void> rateRecipeInfo(int rating) async {
    _state = state.copyWith(isLoading: true, errorMessage: null);
    notifyListeners();

    try {
      final recipeInfo = state.recipeInfo.copyWith(rate: rating.toDouble());
      final updatedRecipeInfo = await _updateRecipeUseCase.updateRecipeInfo(
        recipeInfo,
      );
      _state = state.copyWith(recipeInfo: updatedRecipeInfo);
    } catch (e) {
      _state = state.copyWith(errorMessage: e.toString());
    } finally {
      _state = state.copyWith(isLoading: false);
      notifyListeners();
    }
  }
}
