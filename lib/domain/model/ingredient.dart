import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient.freezed.dart';

@freezed
abstract class Ingredient with _$Ingredient {
  const factory Ingredient({
    required String name,
    required String weight,
    required String imageUrl,
  }) = _Ingredient;

  static const empty = Ingredient(
    name: '',
    weight: '',
    imageUrl: '',
  );

  static const dummyImageUrl = 'https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png';
}