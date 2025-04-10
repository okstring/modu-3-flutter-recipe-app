import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_tag_list.freezed.dart';

@freezed
abstract class RecipeTagList with _$RecipeTagList {
  const factory RecipeTagList({
    required List<String> recipeTags,
  }) = _RecipeTagList;

  static const empty = RecipeTagList(recipeTags: []);
}