import 'package:flutter/material.dart';
import 'package:flutter_awesome/presentation/pages/main/login/login_page.dart';
import 'package:flutter_awesome/presentation/pages/main/main_page.dart';
import 'package:flutter_awesome/presentation/pages/main/splash_screen/splash_screen_page.dart';
import 'package:get_it/get_it.dart';

class Router {
  late RouteObserver<PageRoute> routeObserver;

  Router() {
    routeObserver = RouteObserver<PageRoute>();
  }

  Route<dynamic>? getRoute(RouteSettings? settings) {
    var di = GetIt.I;

    switch (settings?.name) {
      case MainPage.route:
        return _buildRoute(settings, MainPage(controller: di.get()));

      case SplashScreenPage.route:
        return _buildRoute(settings, SplashScreenPage(controller: di.get()));
      
      case LoginPage.route:
        return _buildRoute(settings, LoginPage(controller: di.get()));

      default:
        return null;
    }
  }

  PageRouteBuilder _buildRoute(RouteSettings? settings, Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return AnimatedBuilder(
          animation: animation,
          builder: (context, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(-1, 0),
                end: const Offset(0, 0),
              ).animate(animation),
              child: page,
            );
          },
        );
      },
      transitionDuration: const Duration(milliseconds: 300),
    );
  }
}
