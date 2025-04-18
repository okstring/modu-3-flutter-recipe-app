import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/domain/model/recipe.dart';

part 'search_recipes_main_state.freezed.dart';

@freezed
abstract class SearchRecipesMainState with _$SearchRecipesMainState {
  const factory SearchRecipesMainState({
    @Default([]) List<Recipe> searchRecipes,
    @Default(false) bool isLoading,
    @Default(null) String? errorMessage,
    @Default('') String query,
  }) = _SearchRecipesMainState;
}