import 'package:flutter/material.dart';
import 'package:recipe_app/data/model/recipe.dart';
import 'package:recipe_app/presentation/components/f_input_field.dart';
import 'package:recipe_app/presentation/components/f_search_filter_button.dart';
import 'package:recipe_app/presentation/components/f_small_recipe_card.dart';
import 'package:recipe_app/presentation/search_recipes/recipe_grid_view.dart';
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
    return ListenableBuilder(
      listenable: widget.viewModel,
      builder: (context, snapshot) {
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

                Row(
                  children: [
                    Text(
                      widget.viewModel.state.query.isEmpty ? 'Recent Search' : 'Search Result',
                      style: TextStyles.mediumTextBold(color: AppColors.black),
                      textAlign: TextAlign.start,
                    ),

                    Spacer(),

                    if (widget.viewModel.state.query.isNotEmpty)
                      Text(
                        '${widget.viewModel.state.searchRecipes.length} results',
                        style: TextStyles.smallerTextRegular(color: AppColors.gray3),
                      ),
                    ]
                ),

                const SizedBox(height: 20,),

                RecipeGridView(viewModel: widget.viewModel, onRecipeTap: (recipe) {
                  print(recipe);
                })
              ],
            ),
          ),
        );
      }
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
            value: widget.viewModel.state.query,
            isVisibleSearchIcon: true,
            onValueChange: (value) {
              print(value);
              widget.viewModel.fetchSearchRecipesByQuery(query: value);
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