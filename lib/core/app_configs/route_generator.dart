import 'package:e_commerce_app/features/home_screen/presentation/pages/home_screen.dart';
import 'package:flutter/material.dart';

import '../../features/home_screen/presentation/pages/search_page.dart';
import 'screen_names.dart';

class RouteGenerator {
  RouteGenerator._();

  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case ScreenNames.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      case ScreenNames.searchScreen:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) => SearchScreen(category: args['category']),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
    }
  }
}
