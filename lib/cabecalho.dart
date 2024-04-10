import 'package:conteiners/statewidget.dart';
import 'package:flutter/material.dart';
import 'telaMod.dart';
import 'main.dart';

class drawres extends StatelessWidget {
  final String title;

  const drawres({required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Conteiners(),
    );
  }
}
