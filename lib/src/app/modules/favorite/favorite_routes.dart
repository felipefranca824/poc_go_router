import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poc_go_router/src/app/modules/favorite/pages/favorite_page.dart';

abstract class FavoriteRoutes {
  static const favorite = '/favorite';

  static Widget _favoriteRouteBuilder(
          BuildContext context, GoRouterState state) =>
      const FavoritePage();

  static List<RouteBase> get routes => [
        GoRoute(path: favorite, builder: _favoriteRouteBuilder),
      ];
}
