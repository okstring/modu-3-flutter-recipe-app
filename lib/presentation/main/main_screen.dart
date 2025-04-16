import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/routing/routes.dart';
import 'package:recipe_app/ui/color_styles.dart';

class MainScreen extends StatelessWidget {
  final Widget child;

  const MainScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: _buildCustomTabBar(context),
    );
  }

  Widget _buildCustomTabBar(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();

    return Container(
      color: AppColors.white,
      child: SafeArea(
        left: false,
        right: false,
        top: false,
        child: Container(
          height: 72,
          decoration: BoxDecoration(color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildTabItem(
                context,
                activeImage: Image.asset(
                  'assets/images/home_active.png',
                  width: 26,
                  height: 26,
                ),
                inactiveImage: Image.asset(
                  'assets/images/home_inactive.png',
                  width: 24,
                  height: 24,
                ),
                path: Routes.home,
                isSelected: location == Routes.home,
              ),
              _buildTabItem(
                context,
                activeImage: Image.asset(
                  'assets/images/favorites_active.png',
                  width: 26,
                  height: 26,
                ),
                inactiveImage: Image.asset(
                  'assets/images/favorites_inactive.png',
                  width: 24,
                  height: 24,
                ),
                path: Routes.favorites,
                isSelected: location == Routes.favorites,
              ),
              _buildTabItem(
                context,
                activeImage: Image.asset(
                  'assets/images/notifications_active.png',
                  width: 26,
                  height: 26,
                ),
                inactiveImage: Image.asset(
                  'assets/images/notifications_inactive.png',
                  width: 24,
                  height: 24,
                ),
                path: Routes.notifications,
                isSelected: location == Routes.notifications,
              ),
              _buildTabItem(
                context,
                activeImage: Image.asset(
                  'assets/images/profile_active.png',
                  width: 26,
                  height: 26,
                ),
                inactiveImage: Image.asset(
                  'assets/images/profile_inactive.png',
                  width: 24,
                  height: 24,
                ),
                path: Routes.profile,
                isSelected: location == Routes.profile,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabItem(
    BuildContext context, {
    required Image activeImage,
    required Image inactiveImage,
    required String path,
    required bool isSelected,
  }) {
    return GestureDetector(
      onTap: () => context.go(path),
      child: isSelected ? activeImage : inactiveImage,
    );
  }
}
