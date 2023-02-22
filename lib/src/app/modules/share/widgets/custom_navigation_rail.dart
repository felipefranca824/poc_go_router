// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poc_go_router/src/app/modules/favorite/favorite_routes.dart';
import 'package:poc_go_router/src/app/modules/home/home_routes.dart';

import 'custom_navigation_rail_destination.dart';

class CustomNavigationRail extends StatefulWidget {
  final Widget child;
  const CustomNavigationRail({
    super.key,
    required this.child,
  });

  @override
  State<CustomNavigationRail> createState() => _CustomNavigationRailState();
}

class _CustomNavigationRailState extends State<CustomNavigationRail> {
  final tabs = [
    CustomNavigationRailDestination(
      initialLocation: HomeRoutes.home,
      icon: const Icon(
        Icons.home,
        color: Colors.black,
      ),
      label: const Text('home'),
    ),
    CustomNavigationRailDestination(
      initialLocation: FavoriteRoutes.favorite,
      icon: const Icon(Icons.favorite),
      label: const Text('favorito'),
    ),
  ];

  int get _currentIndex => _locationToTabIndex(GoRouter.of(context).location);

  int _locationToTabIndex(String location) {
    final index =
        tabs.indexWhere((t) => location.startsWith(t.initialLocation));
    // if index not found (-1), return 0
    return index < 0 ? 0 : index;
  }

  // callback used to navigate to the desired tab
  void _onItemTapped(BuildContext context, int tabIndex) {
    if (tabIndex != _currentIndex) {
      // go to the initial location of the selected tab (by index)
      context.go(tabs[tabIndex].initialLocation);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            backgroundColor: Colors.blue,
            elevation: 5,
            destinations: tabs,
            selectedIndex: _currentIndex,
            indicatorColor: Colors.white,
            useIndicator: true,
            onDestinationSelected: (selected) =>
                _onItemTapped(context, selected),
          ),
          Expanded(
            child: widget.child,
          )
        ],
      ),
    );
  }
}
