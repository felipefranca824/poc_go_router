import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poc_go_router/src/app/modules/home/screens/home_datails_page.dart';

import '../../../core/base_route.dart';
import 'screens/home_page.dart';

class HomeRoutes implements BaseRoutes {
  static const home = '/home';
  static homeDetailsWithParams([String? id]) => '/home/${id ?? ':id'}';

  static Widget _homePageRouteBuilder(
          BuildContext context, GoRouterState state) =>
      const HomePage();

  static Widget _homeDetailsRouteBuilder(
          BuildContext context, GoRouterState state) =>
      HomeDatailsPage(
        id: state.params['id']!,
      );

  @override
  List<RouteBase> get routes => [
        GoRoute(path: home, builder: _homePageRouteBuilder),
        GoRoute(
            path: homeDetailsWithParams(), builder: _homeDetailsRouteBuilder),
      ];
}
