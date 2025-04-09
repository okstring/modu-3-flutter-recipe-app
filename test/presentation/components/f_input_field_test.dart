import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:recipe_app/presentation/components/f_input_field.dart';
import 'package:recipe_app/ui/color_styles.dart';

void main() {
  group('FInputField Test', () {
    const label = '라벨';
    const placeHolder = '입력해주세요';
    const value = '';
    const textFieldKey = Key('textField');
    onValueChange(String value) {}
    final fInputField = FInputField(
      label: label,
      placeHolder: placeHolder,
      value: value,
      onValueChange: onValueChange,
      textFieldKey: textFieldKey,
    );

    testWidgets('should display correct label text', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(MaterialApp(home: Scaffold(body: fInputField)));

      final Finder textFinder = find.text(label);

      expect(textFinder, findsOneWidget);
    });

    testWidgets('should display correct placeholder text', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(MaterialApp(home: Scaffold(body: fInputField)));

      final Finder placeHolderFinder = find.byKey(textFieldKey);

      expect(placeHolderFinder, findsOneWidget);
    });

    testWidgets('should have correct border style', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(MaterialApp(home: Scaffold(body: fInputField)));

      final Finder isCorrectBorderFinder = find.byWidgetPredicate((widget) {
        if (widget is InputDecorator) {
          final InputDecoration decoration = widget.decoration;

          // Default border style
          if (decoration.enabledBorder is OutlineInputBorder) {
            final OutlineInputBorder border =
                decoration.enabledBorder as OutlineInputBorder;
            return border.borderSide.color == AppColors.gray4 &&
                border.borderSide.width == 1.5 &&
                border.borderRadius == BorderRadius.circular(10.0);
          }
        }
        return false;
      });

      expect(isCorrectBorderFinder, findsOneWidget);
    });
  });
}
