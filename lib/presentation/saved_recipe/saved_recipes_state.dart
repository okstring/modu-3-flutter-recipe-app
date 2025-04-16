import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/domain/model/recipe.dart';

part 'saved_recipes_state.freezed.dart';

@freezed
abstract class SavedRecipesState with _$SavedRecipesState {
  const factory SavedRecipesState({
    @Default([]) List<Recipe> savedRecipes,
    @Default(false) bool isLoading,
    @Default(null) String? errorMessage,
  }) = _SavedRecipesState;
}
