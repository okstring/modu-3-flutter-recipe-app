import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/routing/routes.dart';
import 'package:recipe_app/data/data_source/recipe_data_source_impl.dart';
import 'package:recipe_app/data/repository/book_mark_repository_impl.dart';
import 'package:recipe_app/data/repository/recipe_repository_impl.dart';
import 'package:recipe_app/domain/use_case/get_saved_recipes_use_case.dart';
import 'package:recipe_app/presentation/ingredient/ingredient_scene.dart';
import 'package:recipe_app/presentation/home/home_screen.dart';
import 'package:recipe_app/presentation/ingredient/ingredient_state.dart';
import 'package:recipe_app/presentation/ingredient/ingredient_view_model.dart';
import 'package:recipe_app/presentation/main/main_screen.dart';
import 'package:recipe_app/presentation/not_found_screen.dart';
import 'package:recipe_app/presentation/notifications/notifications_screen.dart';
import 'package:recipe_app/presentation/profile/profile_screen.dart';
import 'package:recipe_app/presentation/saved_recipe/saved_recipes_screen.dart';
import 'package:recipe_app/presentation/saved_recipe/saved_recipes_view_model.dart';
import 'package:recipe_app/presentation/sign_in/sign_in_screen.dart';
import 'package:recipe_app/presentation/sign_up/sign_up_screen.dart';
import 'package:recipe_app/presentation/splash_screen/view/splash_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: Routes.favorites,
    routes: [
      GoRoute(path: Routes.splash, builder: (context, state) => SplashScreen()),

      GoRoute(
        path: Routes.signIn,
        builder: (context, state) => const SignInScreen(),
      ),

      GoRoute(
        path: Routes.signUp,
        builder: (context, state) => const SignUpScreen(),
      ),

      GoRoute(
        path: Routes.ingredient,
        builder: (context, state) {
          try {
            final id = state.pathParameters[RoutesParameters.ingredientRecipeIdParameter]!;
            return IngredientScreen(viewModel: IngredientViewModel(state: IngredientState(id: id)));
          } catch (e) {
            // 404
            return const NotFoundScreen();
          }
        }
      ),

      ShellRoute(
        builder: (context, state, child) {
          return MainScreen(child: child);
        },
        routes: [
          GoRoute(
            path: Routes.home,
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: Routes.favorites,
            builder:
                (context, state) => SavedRecipesScreen(
                  savedRecipesViewModel: SavedRecipesViewModel(
                    getSavedRecipesUseCase: GetSavedRecipesUseCase(
                      recipeRepository: RecipeRepositoryImpl(
                        recipeDataSource: RecipeDataSourceImpl(),
                      ),
                      bookMarkRepository: BookMarkRepositoryImpl(
                        recipeDataSource: RecipeDataSourceImpl(),
                      ),
                    ),
                  ),
                ),
          ),
          GoRoute(
            path: Routes.notifications,
            builder: (context, state) => const NotificationsScreen(),
          ),
          GoRoute(
            path: Routes.profile,
            builder: (context, state) => const ProfileScreen(),
          ),
        ],
      ),
    ],
  );
}
