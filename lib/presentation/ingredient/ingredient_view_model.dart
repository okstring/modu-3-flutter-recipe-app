import 'package:flutter/material.dart';
import 'package:recipe_app/presentation/ingredient/ingredient_state.dart';

class IngredientViewModel extends ChangeNotifier {

  final IngredientState _state;

  IngredientState get state => _state;

  IngredientViewModel({
    required IngredientState state,
  }) : _state = state;
}
