import 'package:recipe_app/data/dto/ingredient_dto.dart';
import 'package:recipe_app/domain/model/ingredient.dart';

extension IngredientDtoMapper on Ingredient {
  IngredientDto toIngredientDto() {
    return IngredientDto(
      name: name,
      weight: weight,
      imageUrl: imageUrl,
    );
  }
}