import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/routing/routes.dart';
import 'package:recipe_app/presentation/search_recipes/filter_search_state.dart';
import 'package:recipe_app/presentation/search_recipes/search_recipes_action.dart';
import 'package:recipe_app/presentation/search_recipes/search_recipes_screen.dart';
import 'package:recipe_app/presentation/search_recipes/search_recipes_state.dart';
import 'package:recipe_app/presentation/search_recipes/search_recipes_view_model.dart';

class SearchRecipesScreenRoot extends StatefulWidget {
  final SearchRecipesViewModel viewModel;

  const SearchRecipesScreenRoot({super.key, required this.viewModel});

  @override
  State<SearchRecipesScreenRoot> createState() =>
      _SearchRecipesScreenRootState();
}

class _SearchRecipesScreenRootState extends State<SearchRecipesScreenRoot> {
  SearchRecipesViewModel get viewModel => widget.viewModel;

  SearchRecipesState get state => widget.viewModel.state;

  FilterSearchState get filterSearchState => widget.viewModel.filterSearchState;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      _handleAction(GetSavedRecipesAction());
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel,
      builder: (_, __) {
        if (mounted) {}
        return SearchRecipesScreen(
          state: state,
          onAction: _handleAction,
          filterSearchState: filterSearchState,
        );
      },
    );
  }

  void _handleAction(SearchRecipesAction action) async {
    if (mounted) {
      switch (action) {
        case GetSavedRecipesAction():
          await widget.viewModel.getSavedRecentRecipes();
          break;
        case OnTabRecipe():
          final basePath = Routes.ingredient.split('/:')[0];
          context.push('$basePath/${action.id}');
          break;
        case OnInputChanged():
          widget.viewModel.fetchSearchRecipesByQuery(query: action.query);
          break;
        case ApplyFilters():
          widget.viewModel.applyFilters(action.state);
          break;
      }
    }
  }
}
