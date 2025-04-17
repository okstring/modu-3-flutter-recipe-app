enum CategoryFilterType {
  all,
  cereal,
  vegetables,
  dinner,
  chinese,
  localDish,
  fruit,
  breakFast,
  spanish,
  lunch;

  bool get hasStar {
    switch (this) {
      case dinner:
        return true;
      default:
        return false;
    }
  }

  String get name {
    return switch (this) {
      all => 'All',
      cereal => 'Cereal',
      vegetables => 'Vegetables',
      dinner => 'Dinner',
      chinese => 'Chinese',
      localDish => 'Local Dish',
      fruit => 'Fruit',
      breakFast => 'BreakFast',
      spanish => 'Spanish',
      lunch => 'Lunch',
    };
  }
}