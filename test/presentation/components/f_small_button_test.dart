import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:recipe_app/presentation/components/f_small_button.dart';

void main() {
  group('FSmallButton 테스트', () {
    testWidgets('FSmallButton text should match', (WidgetTester tester) async {
      const text = 'Hello';
      voidCallback() {}

      await tester.pumpWidget(
        MaterialApp(home: FSmallButton(text: text, voidCallback: voidCallback)),
      );

      final Finder textFinder = find.text(text);

      expect(textFinder, findsOneWidget);
    });

    testWidgets('FSmallButton should trigger onTap event when clicked', (
      WidgetTester tester,
    ) async {
      int count = 0;
      const text = 'Hello';
      voidCallback() {
        count++;
      }

      await tester.pumpWidget(
        MaterialApp(home: FSmallButton(text: text, voidCallback: voidCallback)),
      );

      final Finder textFinder = find.text(text);
      await tester.tap(textFinder);

      expect(count, 1);
    });
  });
}
