import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/domain/model/ingredient.dart';
import 'package:recipe_app/domain/model/procedure.dart';

part 'recipe_info.freezed.dart';

@freezed
abstract class RecipeInfo with _$RecipeInfo {
  const factory RecipeInfo({
    required String id,
    required String name,
    required int estimatedTime,
    required bool isFavorite,
    required double rate,
    required String makeUserName,
    required String makeUserImageUrl,
    String? videoUrl,
    required String imageUrl,

    required int reviewCount,
    required List<Ingredient> ingredient,
    required List<String> procedures,
    String? makeUserLocation,
    bool? isFollow,
    required String recipeDeepLink,
  }) = _RecipeInfo;

  static const empty = RecipeInfo(
    id: '',
    name: '',
    estimatedTime: 0,
    isFavorite: false,
    rate: 0.0,
    makeUserName: '',
    makeUserImageUrl: '',
    imageUrl: '',
    reviewCount: 0,
    ingredient: [],
    procedures: [],
    recipeDeepLink: '',
  );
}