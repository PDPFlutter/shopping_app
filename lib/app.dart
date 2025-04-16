import 'package:flutter/material.dart';
import 'package:shopping_app/config/routes/app_routes.dart';

class ShoppingApp extends StatelessWidget {
  const ShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RouteNames.welcome,
      routes: AppRoutes.routes,
    );
  }
}