import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/presentation/search_recipes/filter_search_state.dart';

part 'search_recipes_action.freezed.dart';

@freezed
sealed class SearchRecipesAction with _$SearchRecipesAction {
  const factory SearchRecipesAction.getSavedRecipesAction() = GetSavedRecipesAction;
  const factory SearchRecipesAction.onTabRecipe({required String id}) = OnTabRecipe;
  const factory SearchRecipesAction.onInputChanged({required String query}) = OnInputChanged;
  const factory SearchRecipesAction.applyFilters({required FilterSearchState state}) = ApplyFilters;

}