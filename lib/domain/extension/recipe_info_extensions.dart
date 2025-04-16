import 'package:recipe_app/domain/model/recipe.dart';
import 'package:recipe_app/domain/model/recipe_info.dart';

extension RecipeInfoExtension on RecipeInfo {
  Recipe toRecipe() {
    return Recipe(
      id: id,
      name: name,
      estimatedTime: estimatedTime,
      isFavorite: isFavorite,
      rate: rate,
      makeUserName: makeUserName,
      makeUserImageUrl: makeUserImageUrl,
      videoUrl: videoUrl,
      imageUrl: imageUrl,
    );
  }
}