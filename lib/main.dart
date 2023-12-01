import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'homepage.dart';
import 'task_data.dart';

void main() => runApp(EverdayFitness());


class EverdayFitness extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          primaryColor: Color(0xFFFFDEDE),
          scaffoldBackgroundColor: Color(0xFFFFDEDE),
        ),
        home: Homepage(),
      ),
    );
  }
}

