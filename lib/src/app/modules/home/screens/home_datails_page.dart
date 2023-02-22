// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class HomeDatailsPage extends StatelessWidget {
  final String id;
  const HomeDatailsPage({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes $id'),
      ),
      body: Container(),
    );
  }
}
