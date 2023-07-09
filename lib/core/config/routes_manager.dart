import 'package:flutter/material.dart';

import '../../features/home/presentation/pages/home_screen.dart';

class Routes {
  static const String homeRoute = "/home";
}

class RouteGenerator {
  static Route<dynamic>? getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return null;
    }
  }
}
