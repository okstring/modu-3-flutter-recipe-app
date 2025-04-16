import 'package:json_annotation/json_annotation.dart';
import 'package:recipe_app/data/dto/ingredient_dto.dart';
import 'package:recipe_app/data/dto/procedure_dto.dart';

part 'recipe_info_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class RecipeInfoDto {
  String id;
  String name;
  int estimatedTime;
  bool isFavorite;
  double rate;
  String makeUserName;
  String makeUserImageUrl;
  String? videoUrl;
  String imageUrl;
  int reviewCount;
  List<IngredientDto> ingredient;
  List<String> procedures;
  String? makeUserLocation;
  bool? isFollow;
  String recipeDeepLink;

  RecipeInfoDto({
    required this.id,
    required this.name,
    required this.estimatedTime,
    required this.isFavorite,
    required this.rate,
    required this.makeUserName,
    required this.makeUserImageUrl,
    this.videoUrl,
    required this.imageUrl,
    required this.reviewCount,
    required this.ingredient,
    required this.procedures,
    this.makeUserLocation,
    this.isFollow,
    required this.recipeDeepLink,
  });

  factory RecipeInfoDto.fromJson(Map<String, dynamic> json) => _$RecipeInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeInfoDtoToJson(this);
}

