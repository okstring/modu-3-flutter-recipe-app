import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/routing/routes.dart';
import 'package:recipe_app/presentation/home/home_screen.dart';
import 'package:recipe_app/presentation/home/home_state.dart';
import 'package:recipe_app/presentation/home/home_view_model.dart';

class HomeScreenRoot extends StatefulWidget {
  final HomeViewModel viewModel;

  const HomeScreenRoot({super.key, required this.viewModel});

  @override
  State<HomeScreenRoot> createState() => _HomeScreenRootState();
}

class _HomeScreenRootState extends State<HomeScreenRoot> {
  HomeViewModel get viewModel => widget.viewModel;

  HomeState get state => widget.viewModel.state;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel,
      builder: (_, _) {
        return HomeScreen(
          state: state,
          onSearchFieldTap: () {
            context.push(Routes.search);
          },
        );
      },
    );
  }
}
