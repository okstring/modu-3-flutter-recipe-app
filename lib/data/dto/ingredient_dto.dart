import 'package:json_annotation/json_annotation.dart';

part 'ingredient_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class IngredientDto {
  String name;
  String weight;
  String imageUrl;

  IngredientDto({
    required this.name,
    required this.weight,
    required this.imageUrl,
  });

  factory IngredientDto.fromJson(Map<String, dynamic> json) => _$IngredientDtoFromJson(json);

  Map<String, dynamic> toJson() => _$IngredientDtoToJson(this);
}