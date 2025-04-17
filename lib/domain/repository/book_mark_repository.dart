import 'package:recipe_app/domain/model/recipe.dart';

abstract interface class BookmarkRepository {
  Future<Recipe> toggleFavorite(String id);
}
