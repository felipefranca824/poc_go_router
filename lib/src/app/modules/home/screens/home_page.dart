import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poc_go_router/src/app/modules/home/home_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 120,
          height: 40,
          child: ElevatedButton(
            onPressed: () {
              context.go(
                HomeRoutes.homeDetailsWithParams(12.toString()),
              );
            },
            child: const Text('home'),
          ),
        ),
      ],
    );
  }
}
