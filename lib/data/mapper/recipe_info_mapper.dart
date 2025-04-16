import 'package:recipe_app/data/dto/recipe_info_dto.dart';
import 'package:recipe_app/data/mapper/ingredient_mapper.dart';
import 'package:recipe_app/data/mapper/procedure_mapper.dart';
import 'package:recipe_app/domain/model/recipe_info.dart';

extension RecipeInfoMapper on RecipeInfoDto {
  RecipeInfo toRecipeInfo() {
    return RecipeInfo(
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
      ingredient: ingredient.map((e) => e.toIngredient()).toList(),
      procedure: procedure.map((e) => e.toProcedure()).toList(),
      makeUserLocation: makeUserLocation,
      isFollow: isFollow,
      recipeDeepLink: recipeDeepLink,
    );
  }
}
