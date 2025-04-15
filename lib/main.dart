import 'package:flutter/material.dart';
import 'package:recipe_app/core/routing/router.dart';

void main() {
  runApp(
    MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    ),
  );
}
