import 'package:recipe_app/data/repository/book_mark_repository_impl.dart';
import 'package:recipe_app/domain/model/recipe.dart';
import 'package:recipe_app/domain/repository/book_mark_repository.dart';

class ToggleFavoriteUseCase {
  final BookMarkRepository _bookMarkRepository;

  ToggleFavoriteUseCase({BookMarkRepository? bookMarkRepository})
    : _bookMarkRepository = bookMarkRepository ?? BookMarkRepositoryImpl();

  Future<Recipe> toggleFavorite(String id) {
    return _bookMarkRepository.toggleFavorite(id);
  }
}
