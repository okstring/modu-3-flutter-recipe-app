import 'package:recipe_app/domain/model/recipe.dart';
import 'package:recipe_app/domain/repository/book_mark_repository.dart';

class ToggleFavoriteUseCase {
  final BookMarkRepository _bookMarkRepository;

  const ToggleFavoriteUseCase({
    required BookMarkRepository bookMarkRepository,
  }) : _bookMarkRepository = bookMarkRepository;

  Future<Recipe> toggleFavorite(String id) {
    return _bookMarkRepository.toggleFavorite(id);
  }
}