import 'package:flutter/material.dart';
import 'package:recipe_app/data/model/recipe.dart';
import 'package:recipe_app/presentation/components/f_input_field.dart';
import 'package:recipe_app/presentation/components/f_search_filter_button.dart';
import 'package:recipe_app/presentation/components/f_small_recipe_card.dart';
import 'package:recipe_app/presentation/search_recipes/search_recipes_view_model.dart';
import 'package:recipe_app/ui/color_styles.dart';
import 'package:recipe_app/ui/text_styles.dart';

class SearchRecipesScreen extends StatefulWidget {
  final SearchRecipesViewModel viewModel;

  const SearchRecipesScreen({super.key, required this.viewModel});

  @override
  State<SearchRecipesScreen> createState() => _SearchRecipesScreenState();
}

class _SearchRecipesScreenState extends State<SearchRecipesScreen> {
  @override
  Widget build(BuildContext context) {
    widget.viewModel.fetchSearchRecipes();
    return SafeArea(
      child: Container(
        padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Text(
              'Search recipes',
              style: TextStyles.mediumTextBold(color: AppColors.black),
            ),
            const SizedBox(height: 17),
            _buildSearchBarArea(),
            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: Text(
                'Recent Search',
                style: TextStyles.mediumTextBold(color: AppColors.black),
                textAlign: TextAlign.start,
              ),
            ),

            const SizedBox(height: 20,),

            RecipeGridView(recipes: widget.viewModel.state.searchRecipes, onRecipeTap: (recipe) {
              print(recipe);
            })
          ],
        ),
      ),
    );
  }

  Row _buildSearchBarArea() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 20,
      children: [
        Expanded(
          child: FInputField(
            placeHolder: 'Search recipe',
            value: '',
            isVisibleSearchIcon: true,
            onValueChange: (value) {
              print(value);
            },
            textFieldKey: Key('ho'),
          ),
        ),
        FSearchFilterButton(
          voidCallback: () {
            print('call');
          },
        ),
      ],
    );
  }
}

class RecipeGridView extends StatelessWidget {
  final List<Recipe> recipes; // 레시피 목록 데이터
  final Function(Recipe) onRecipeTap; // 레시피 선택 시 실행할 콜백 함수
  final int crossAxisCount; // 그리드의 열 개수
  final double spacing; // 아이템 간 간격

  const RecipeGridView({
    super.key,
    required this.recipes,
    required this.onRecipeTap,
    this.crossAxisCount = 2, // 기본값으로 2열 그리드 설정
    this.spacing = 15.0,
  });

  @override
  Widget build(BuildContext context) {
    // 화면의 너비를 가져옵니다
    final screenWidth = MediaQuery.of(context).size.width;

    // 패딩을 고려한 그리드 내부 사용 가능 너비 계산
    final availableWidth = screenWidth - (spacing * (crossAxisCount + 1));

    // 하나의 아이템 너비 계산 (사용 가능 너비를 열 개수로 나눔)
    final itemWidth = availableWidth / crossAxisCount;

    return Expanded(
      child: GridView.builder(
        // 아이템 개수는 레시피 목록의 길이
        itemCount: recipes.length,

        // 그리드 델리게이트 설정
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount, // 열 개수 설정
          crossAxisSpacing: spacing, // 가로 간격
          mainAxisSpacing: spacing, // 세로 간격
          childAspectRatio: 1.0, // 자식 위젯의 가로/세로 비율 (정방형)
        ),

        // 각 그리드 아이템 빌더
        itemBuilder: (context, index) {
          final recipe = recipes[index];

          // 우리가 만든 정방형 카드 위젯 사용
          return FSmallRecipeCard(
            recipe: recipe,
            onTap: () => onRecipeTap(recipe),
            width: itemWidth, // 계산된 너비 전달
          );
        },
      ),
    );
  }
}
