import 'package:flutter/material.dart';
import 'package:recipe_app/presentation/ingredient/ingredient_action.dart';
import 'package:recipe_app/presentation/ingredient/ingredient_scene.dart';
import 'package:recipe_app/presentation/ingredient/ingredient_state.dart';
import 'package:recipe_app/presentation/ingredient/ingredient_view_model.dart';

class IngredientScreenRoot extends StatefulWidget {
  final IngredientViewModel viewModel;

  const IngredientScreenRoot({super.key, required this.viewModel});

  @override
  State<IngredientScreenRoot> createState() => _IngredientScreenRootState();
}

class _IngredientScreenRootState extends State<IngredientScreenRoot> {
  IngredientViewModel get viewModel => widget.viewModel;

  IngredientState get state => widget.viewModel.state;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel,
      builder: (_, __) {
        return IngredientScreen(
          state: state,
          onAction: (IngredientAction action) {
            switch (action) {
              case OnTapFTabs():
                viewModel.changeTabsType(action.index);
                break;
            }
          },
        );
      },
    );
  }
}
