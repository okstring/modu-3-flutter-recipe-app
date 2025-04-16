import 'package:recipe_app/domain/model/recipe.dart';

abstract interface class BookMarkRepository {
  Future<Recipe> toggleFavorite(String id);
}
