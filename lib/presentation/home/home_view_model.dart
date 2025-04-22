import 'package:flutter/material.dart';
import 'package:recipe_app/domain/model/type/category_filter_type.dart';
import 'package:recipe_app/domain/use_case/get_saved_recipes_use_case.dart';
import 'package:recipe_app/presentation/home/home_state.dart';

class HomeViewModel with ChangeNotifier {
  final GetSavedRecipesUseCase _getSavedRecipesUseCase;
  HomeState _state;

  HomeState get state => _state;

  HomeViewModel({
    required GetSavedRecipesUseCase getSavedRecipesUseCase,
    HomeState? state,
  }) : _state =
           state ??
           HomeState(
             categories: CategoryFilterType.values.map((e) => e.name).toList(),
           ),
       _getSavedRecipesUseCase = getSavedRecipesUseCase;

  void setCategory(String category) async {
    _state = _state.copyWith(
      selectedCategory: CategoryFilterTypeExtension.fromString(category),
    );
    await fetchSearchRecipesWithFilters();
  }

  Future<void> fetchSearchRecipesWithFilters() async {
    _state = state.copyWith(isLoading: true, errorMessage: null);
    notifyListeners();

    try {
      final searchedRecipes = await _getSavedRecipesUseCase.getSavedRecipes(
        categoryFilterType: state.selectedCategory,
      );

      _state = state.copyWith(
        selectedCategoryRecipes: searchedRecipes,
        isLoading: false,
      );
      notifyListeners();
    } catch (e) {
      _state = state.copyWith(errorMessage: e.toString(), isLoading: false);
      notifyListeners();
    }
  }
}
