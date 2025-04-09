import 'package:flutter/material.dart';
import 'package:recipe_app/presentation/components/f_big_button.dart';
import 'package:recipe_app/presentation/components/f_input_field.dart';
import 'package:recipe_app/presentation/components/f_medium_button.dart';
import 'package:recipe_app/presentation/components/f_small_button.dart';
import 'package:recipe_app/presentation/components/f_tabs.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start ,
              spacing: 16,
              children: [
                FBigButton(text: 'Hello', voidCallback: () {
                  print('Tab Big Button');
                },),
                FMediumButton(text: 'World', voidCallback: () {
                  print('Tab Medium Button');
                },),
                FSmallButton(text: 'MODU!', voidCallback: () {
                  print('Tab Small Button');
                },),
                FInputField(label: '라벨', placeHolder: '입력해주세요.', value: '', onValueChange: (String value) {
                  print('텍스트가 입력됐습니다. value: $value');
                }, textFieldKey: Key('textField'),),
                FTabs(labels: ['one', 'two', 'three'], onValueChange: (int index) {
                  print('선택된 인덱스: $index');
                }),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
