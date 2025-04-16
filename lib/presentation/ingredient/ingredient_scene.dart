import 'package:flutter/material.dart';
import 'package:recipe_app/presentation/ingredient/ingredient_view_model.dart';

class IngredientScreen extends StatefulWidget {
  final IngredientViewModel viewModel;

  const IngredientScreen({super.key, required this.viewModel});

  @override
  State<IngredientScreen> createState() => _IngredientScreenState();
}

class _IngredientScreenState extends State<IngredientScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back, size: 20),
                    ),

                    Spacer(),

                    IconButton(
                      onPressed: () {
                        //TODO: 더보기 활성화
                      },
                      icon: Icon(Icons.more_horiz, size: 20),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10,),


              Spacer(),


            ],
          ),
        ),
      ),
    );
  }
}
