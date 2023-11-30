import 'package:flutter/material.dart';
import 'homepage.dart';

void main() => runApp(EverdayFitness());


class EverdayFitness extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: Color(0xFFFFDEDE),
        scaffoldBackgroundColor: Color(0xFFFFDEDE),

      ),
      home: Homepage(),
    );
  }
}

