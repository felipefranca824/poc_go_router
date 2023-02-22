import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poc_go_router/src/app/modules/share/widgets/custom_navigation_rail.dart';
import 'package:poc_go_router/src/app/modules/splash/screens/splash_page.dart';

import 'modules/favorite/favorite_routes.dart';
import 'modules/home/home_routes.dart';

class AppRoutes {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();
  static const root = '/';

  static Widget _splashPageRouteBuilder(
          BuildContext context, GoRouterState state) =>
      const SplashPage();

  static final GoRouter _router = GoRouter(
    debugLogDiagnostics: kDebugMode,
    navigatorKey: _rootNavigatorKey,
    initialLocation: root,
    errorBuilder: (context, state) {
      return const Scaffold(
        body: Text("pagina não encontrada"),
      );
    },
    routes: [
      GoRoute(
        path: root,
        builder: _splashPageRouteBuilder,
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return CustomNavigationRail(
            child: child,
          );
        },
        routes: [
          ...HomeRoutes().routes,
          ...FavoriteRoutes.routes,
        ],
      ),
    ],
  );

  static GoRouter get router => _router;
}
