import 'package:flutter/material.dart';
import 'package:finployee/view/screens/splash/splash.dart';
import 'package:finployee/view/screens/home/home.dart';

class Routes {
  Routes._();

  static const String splash = '/splash';
  static const String login = '/phoneNumber';
  static const String home = "/movingToNewHomeScreen";
}

class RouteGenerator {
  RouteGenerator._();

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => SplashScreen());

      case Routes.home:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );

      default:
        return null;
    }
  }
}
