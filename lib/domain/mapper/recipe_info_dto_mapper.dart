import 'package:recipe_app/data/dto/recipe_info_dto.dart';
import 'package:recipe_app/domain/mapper/ingredient_dto_mapper.dart';
import 'package:recipe_app/domain/model/recipe_info.dart';

extension RecipeInfoDtoMapper on RecipeInfo {
  RecipeInfoDto toRecipeInfoDto() {
    return RecipeInfoDto(
      id: id,
      name: name,
      estimatedTime: estimatedTime,
      isFavorite: isFavorite,
      rate: rate,
      makeUserName: makeUserName,
      makeUserImageUrl: makeUserImageUrl,
      videoUrl: videoUrl,
      imageUrl: imageUrl,
      reviewCount: reviewCount,
      ingredient: ingredient.map((e) => e.toIngredientDto()).toList(),
      procedures: procedures,
      makeUserLocation: makeUserLocation,
      isFollow: isFollow,
      recipeDeepLink: recipeDeepLink,
    );
  }
}
