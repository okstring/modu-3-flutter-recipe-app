import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_action.freezed.dart';

@freezed
sealed class IngredientAction with _$IngredientAction {
  const factory IngredientAction.onTapFTabs(int index) = OnTapFTabs;
  const factory IngredientAction.onTapFavorite(String id) = OnTapFavorite;
  const factory IngredientAction.onRateTap(String id) = OnRateTap;
}