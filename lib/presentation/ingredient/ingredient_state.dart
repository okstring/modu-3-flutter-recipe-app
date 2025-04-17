import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/domain/model/recipe_info.dart';
import 'package:recipe_app/domain/model/type/tabs_type.dart';

part 'ingredient_state.freezed.dart';

@freezed
abstract class IngredientState with _$IngredientState {
  const factory IngredientState({
    required String id,
    @Default(RecipeInfo.empty) RecipeInfo recipeInfo,
    @Default(true) bool isLoading,
    @Default(null) String? errorMessage,
    @Default(TabsType.ingrident) TabsType tabsType,
  }) = _IngredientState;
}
