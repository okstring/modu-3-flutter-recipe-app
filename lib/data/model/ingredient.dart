import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient.freezed.dart';

@freezed
abstract class Ingredient with _$Ingredient {
  const factory Ingredient({
    required String name,
    required int weight,
    required String imageUrl,
  }) = _Ingredient;

  static const empty = Ingredient(
    name: '',
    weight: 0,
    imageUrl: '',
  );
}