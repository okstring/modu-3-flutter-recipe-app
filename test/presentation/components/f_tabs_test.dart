import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:recipe_app/presentation/components/f_tabs.dart';

void main() {
  group('FTabs Test', () {
    testWidgets('should correct selected index', (WidgetTester tester) async {
      int selectedIndex = 0;

      final List<String> labels = List.generate(
        3,
        (int index) => '${index + 1}번',
      );
      onValueChange(int value) {
        selectedIndex = value;
      }

      final FTabs fTabs = FTabs(
        labels: labels,
        onValueChange: onValueChange,
      );
      await tester.pumpWidget(MaterialApp(home: Scaffold(body: fTabs)));

      await tester.tap(find.text(labels[1]));
      await tester.pump();

      expect(selectedIndex, 1);
    });
  });
}
