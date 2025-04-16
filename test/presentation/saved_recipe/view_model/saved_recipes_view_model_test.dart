import 'package:flutter_test/flutter_test.dart';
import 'package:recipe_app/data/data_source/recipe_data_source_impl.dart';
import 'package:recipe_app/data/repository/book_mark_repository_impl.dart';
import 'package:recipe_app/domain/model/recipe.dart';
import 'package:recipe_app/domain/model/recipe_info.dart';
import 'package:recipe_app/domain/repository/recipe_repository.dart';
import 'package:recipe_app/domain/use_case/get_saved_recipes_use_case.dart';
import 'package:recipe_app/presentation/saved_recipe/saved_recipes_view_model.dart';

class MockRecipeRepository implements RecipeRepository {
  List<Recipe> recipes;
  RecipeInfo recipeInfo;

  MockRecipeRepository({required this.recipes, required this.recipeInfo});

  @override
  Future<List<Recipe>> getSavedRecipes({String query = ''}) async {
    return recipes;
  }

  @override
  Future<RecipeInfo> getRecipesInfo({required String id}) async {
    return recipeInfo;
  }
}

void main() {
  group('SavedRecipesViewModel Tests', () {
    MockRecipeRepository mockRepository = MockRecipeRepository(
      recipes: [
        Recipe(
          id: '1',
          name: '테스트 레시피',
          estimatedTime: 30,
          isFavorite: true,
          rate: 4.5,
          makeUserName: '테스트 유저',
          makeUserImageUrl: 'test.jpg',
          imageUrl: 'recipe.jpg',
        ),
      ],
      recipeInfo: RecipeInfo.empty,
    );
    SavedRecipesViewModel viewModel = SavedRecipesViewModel(
      getSavedRecipesUseCase: GetSavedRecipesUseCase(
        recipeRepository: mockRepository,
        bookMarkRepository: BookMarkRepositoryImpl(
          recipeDataSource: RecipeDataSourceImpl(),
        ),
      ),
    );

    test('fetchSavedRecipes should load recipes and update state', () async {
      await viewModel.fetchSavedRecipes();

      expect(viewModel.state.isLoading, false);
      expect(viewModel.state.savedRecipes.length, 1);
      expect(viewModel.state.savedRecipes[0].name, '테스트 레시피');
    });
  });
}
