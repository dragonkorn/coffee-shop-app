import 'package:coffee_shop_app/presentations/screens/about_screen/about_screen.dart';
import 'package:coffee_shop_app/presentations/screens/home_screen/home_screen.dart';
import 'package:coffee_shop_app/presentations/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const String initial = '/';
  static const String home = '/home';
  static const String about = '/about';
  static const String login = '/login';

  static Map<String, Widget Function(BuildContext) Function(RouteSettings)>
      routeMap = {
    initial: (RouteSettings setting) => (context) => const LoginScreen(),
    home: (RouteSettings setting) =>
        (context) => const CoffeeHomeScreen(title: 'Coffee Shop'),
    about: (RouteSettings setting) => (context) => const AboutScreen(),
  };
}
