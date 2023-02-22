import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../home/home_routes.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash'),
      ),
      body: ElevatedButton(
        onPressed: () {
          GoRouter.of(context).go(
            HomeRoutes.home,
          );
        },
        child: const Text('To Home'),
      ),
    );
  }
}
