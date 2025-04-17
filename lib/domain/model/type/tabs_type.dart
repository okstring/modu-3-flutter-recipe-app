enum TabsType {
  ingrident,
  procedure;

  String get tabName {
    switch (this) {
      case ingrident:
        return 'Ingrident';
      case procedure:
        return 'Procedure';
    }
  }

  static List<String> get tabsName => TabsType.values.map((e) => e.tabName).toList();
}