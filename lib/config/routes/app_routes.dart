import 'package:flutter/material.dart';
import 'package:shopping_app/feature/welcome/presentation/screen/welcome_screen.dart';
part 'route_names.dart';

sealed class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
    RouteNames.welcome: (context) => const WelcomeScreen(),
  };
}