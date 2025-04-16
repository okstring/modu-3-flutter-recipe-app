enum TimeFilterType {
  all,
  newest,
  oldest,
  popularity;

  String get name {
    return switch (this) {
      all => 'All',
      newest => 'Newest',
      oldest => 'Oldest',
      popularity => 'Popularity',
    };
  }

  bool get hasStar => false;
}