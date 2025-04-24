import 'package:flutter/material.dart';
import 'package:recipe_app/domain/extension/recipe_info_extensions.dart';
import 'package:recipe_app/domain/model/type/tabs_type.dart';
import 'package:recipe_app/presentation/components/f_ingredient_item.dart';
import 'package:recipe_app/presentation/components/f_procedure_item.dart';
import 'package:recipe_app/presentation/components/f_recipe_card.dart';
import 'package:recipe_app/presentation/components/f_small_button.dart';
import 'package:recipe_app/presentation/components/f_tabs.dart';
import 'package:recipe_app/presentation/ingredient/ingredient_action.dart';
import 'package:recipe_app/presentation/ingredient/ingredient_state.dart';
import 'package:recipe_app/presentation/ingredient/ingredient_view_model.dart';
import 'package:recipe_app/ui/color_styles.dart';
import 'package:recipe_app/ui/text_styles.dart';

class IngredientScreen extends StatefulWidget {
  final IngredientState state;
  final void Function(IngredientAction action) onAction;

  const IngredientScreen({super.key, required this.state, required this.onAction,});

  @override
  State<IngredientScreen> createState() => _IngredientScreenState();
}

class _IngredientScreenState extends State<IngredientScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Builder(
        builder: (context) {
          if (widget.state.isLoading) {
            return Center(child: CircularProgressIndicator());
          } else {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 10),
                      _buildNavigationBar(context),

                      SizedBox(height: 10),

                      FRecipeCard(
                        recipe: widget.state.recipeInfo.toRecipe(),
                        onToggleFavorite: (id) {
                          //TODO: Toggle Favorite;
                        },
                        isVisibleTitle: false,
                      ),

                      SizedBox(height: 10),

                      _buildNameAndReviewCountWidget(),

                      SizedBox(height: 10),

                      _buildProfileArea(),

                      SizedBox(height: 12),

                      FTabs(
                        labels: TabsType.tabsName,
                        onValueChange: (index) {
                          widget.onAction(IngredientAction.onTapFTabs(index));
                        },
                      ),

                      SizedBox(height: 35),

                      _buildItemCountArea(),

                      SizedBox(height: 20),

                      _buildIngridents(),
                    ],
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }

  ListView _buildIngridents() {
    final ingredients = widget.state.recipeInfo.ingredient;
    final procedures = widget.state.recipeInfo.procedures;
    final itemCount =
        widget.state.tabsType == TabsType.ingrident
            ? ingredients.length
            : procedures.length;

    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: itemCount,
      itemBuilder: (context, index) {
        final lastIndex = itemCount - 1;
        return Padding(
          padding: EdgeInsets.only(bottom: index == lastIndex ? 0 : 10),
          child:
              widget.state.tabsType == TabsType.ingrident
                  ? FIngredientItem(ingredient: ingredients[index])
                  : FProcedureItem(
                    description: procedures[index],
                    index: index,
                  ),
        );
      },
    );
  }

  Row _buildItemCountArea() {
    return Row(
      children: [
        Icon(Icons.room_service, size: 17, color: AppColors.gray3),
        SizedBox(width: 1),
        Text(
          '1 serve',
          style: TextStyles.smallerTextRegular(color: AppColors.gray3),
        ),

        Spacer(),

        Text(
          widget.state.tabsType == TabsType.ingrident
              ? '${widget.state.recipeInfo.ingredient.length} items'
              : '${widget.state.recipeInfo.procedures.length} Steps',
          style: TextStyles.smallerTextRegular(color: AppColors.gray3),
        ),
      ],
    );
  }

  Row _buildProfileArea() {
    return Row(
      children: [
        ClipOval(
          child: Image.network(
            widget.state.recipeInfo.makeUserImageUrl,
            fit: BoxFit.cover,
            width: 40,
            height: 40,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) {
                return child;
              }
              return SizedBox(width: 40, height: 40);
            },
            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: 40,
                height: 40,
                color: AppColors.gray2,
                child: const Icon(Icons.person, color: AppColors.gray4),
              );
            },
          ),
        ),

        SizedBox(width: 10),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.state.recipeInfo.makeUserName,
              style: TextStyles.smallTextBold(color: AppColors.black),
            ),

            if ((widget.state.recipeInfo.makeUserLocation ?? '')
                .isNotEmpty)
              Row(
                children: [
                  Icon(Icons.pin_drop, size: 17, color: AppColors.gray3),
                  Text(
                    widget.state.recipeInfo.makeUserLocation ?? '',
                    style: TextStyles.smallTextRegular(color: AppColors.black),
                  ),
                ],
              ),
          ],
        ),
        Spacer(),

        FSmallButton(
          text: 'Follow',
          width: 85,
          height: 37,
          style: TextStyles.smallerTextBold(),
          voidCallback: () {},
        ),
      ],
    );
  }

  Row _buildNameAndReviewCountWidget() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            widget.state.recipeInfo.name,
            style: TextStyles.normalTextBold(color: AppColors.black),
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),

        Text(
          '(${widget.state.recipeInfo.reviewCount}K Reviews)',
          style: TextStyles.normalTextRegular(color: AppColors.gray3),
        ),
      ],
    );
  }

  SizedBox _buildNavigationBar(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, size: 24),
          ),

          Spacer(),

          GestureDetector(
            onTap: () {},
            child: Icon(Icons.more_horiz, size: 24),
          ),
        ],
      ),
    );
  }
}