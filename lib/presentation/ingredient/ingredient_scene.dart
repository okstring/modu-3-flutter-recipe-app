import 'package:flutter/material.dart';
import 'package:recipe_app/domain/extension/recipe_info_extensions.dart';
import 'package:recipe_app/presentation/components/f_recipe_card.dart';
import 'package:recipe_app/presentation/ingredient/ingredient_view_model.dart';

class IngredientScreen extends StatefulWidget {
  final IngredientViewModel viewModel;

  const IngredientScreen({super.key, required this.viewModel});

  @override
  State<IngredientScreen> createState() => _IngredientScreenState();
}

class _IngredientScreenState extends State<IngredientScreen> {

  @override
  void initState() {
    super.initState();
    widget.viewModel.getRecipesInfo(widget.viewModel.state.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListenableBuilder(
        listenable: widget.viewModel,
        builder: (context, snapshot) {
          return SafeArea(
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

                  FRecipeCard(recipe: widget.viewModel.state.recipeInfo.toRecipe(), onToggleFavorite: (id) {
                    //TODO: Toggle Favorite;
                  }, isVisibleTitle: false,),

                  Spacer(),


                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
