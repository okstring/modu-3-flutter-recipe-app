import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/data/model/recipe.dart';

part 'search_recipes_main_state.freezed.dart';

@freezed
abstract class SearchRecipesMainState with _$SearchRecipesMainState {
  const factory SearchRecipesMainState({
    @Default([]) List<Recipe> searchRecipes,
    @Default(false) bool isLoading,
    @Default(null) String? errorMessage,
  }) = _SearchRecipesMainState;
}