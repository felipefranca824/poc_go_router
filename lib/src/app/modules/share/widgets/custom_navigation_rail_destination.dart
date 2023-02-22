// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomNavigationRailDestination extends NavigationRailDestination {
  final String initialLocation;
  CustomNavigationRailDestination({
    required this.initialLocation,
    required Widget icon,
    required Widget label,
  }) : super(
          icon: icon,
          label: label,
        );
}
