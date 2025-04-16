import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/routing/routes.dart';
import 'package:recipe_app/ui/color_styles.dart';

class MainScreen extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const MainScreen({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: _buildCustomTabBar(context),
    );
  }

  Widget _buildCustomTabBar(BuildContext context) {
    final int currentIndex = navigationShell.currentIndex;

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
                index: 0,
                isSelected: currentIndex == 0,
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
                index: 1,
                isSelected: currentIndex == 1,
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
                index: 2,
                isSelected: currentIndex == 2,
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
                index: 3,
                isSelected: currentIndex == 3,
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
        required int index,
        required bool isSelected,
      }) {
    return GestureDetector(
      onTap: () => navigationShell.goBranch(index),
      child: isSelected ? activeImage : inactiveImage,
    );
  }
}