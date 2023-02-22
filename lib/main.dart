import 'package:flutter/material.dart';
import 'package:poc_go_router/src/app/app_widget.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  usePathUrlStrategy();
  runApp(const AppWidget());
}
