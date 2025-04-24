import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:recipe_app/presentation/components/f_rating_dialog.dart';
import 'package:recipe_app/presentation/components/f_small_button.dart';

void main() {
  group('FRatingDialogTest 테스트', () {
    testWidgets('Selection and submission functions must work normally.', (
      WidgetTester tester,
    ) async {
      const title = '별점 주기';
      const actionName = '확인';
      int serveRatingValue = 0;
      onRatingSelected(int value) {
        serveRatingValue = value;
      }

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FRatingDialog(
              onRatingSelected: onRatingSelected,
            ),
          ),
        ),
      );

      final buttonFinder = find.byType(FSmallButton);
      expect(buttonFinder, findsOneWidget);

      await tester.tap(buttonFinder);
      await tester.pumpAndSettle();

      expect(find.text(title), findsWidgets);

      expect(find.byIcon(Icons.star_border), findsNWidgets(5));

      const clickIndex = 2;

      await tester.tap(find.byIcon(Icons.star_border).at(clickIndex));
      await tester.pumpAndSettle();

      expect(find.byIcon(Icons.star), findsNWidgets(clickIndex + 1));
      expect(find.byIcon(Icons.star_border), findsNWidgets(5 - clickIndex - 1));

      final actionButton = find.text(actionName);
      expect(actionButton, findsOneWidget);

      await tester.tap(actionButton);
      await tester.pumpAndSettle();

      expect(serveRatingValue, clickIndex + 1);
    });
  });
}
