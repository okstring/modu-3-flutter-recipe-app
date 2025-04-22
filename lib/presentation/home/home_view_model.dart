import 'package:flutter/material.dart';
import 'package:recipe_app/domain/model/type/category_filter_type.dart';
import 'package:recipe_app/presentation/home/home_state.dart';

class HomeViewModel with ChangeNotifier {
  HomeState _state;

  HomeState get state => _state;

  HomeViewModel({HomeState? state})
    : _state =
          state ??
          HomeState(
            categories: CategoryFilterType.values.map((e) => e.name).toList(),
          );

  void setCategory(String category) {
    _state = _state.copyWith(
      selectedCategory: CategoryFilterTypeExtension.fromString(category),
    );
    notifyListeners();
  }
}
