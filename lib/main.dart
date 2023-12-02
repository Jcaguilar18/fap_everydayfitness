import 'package:fap_everydayfitness/recipes/Grilledchicken.dart';
import 'package:fap_everydayfitness/recipes/bakedsalmon.dart';
import 'package:fap_everydayfitness/recipes/beefstew.dart';
import 'package:fap_everydayfitness/recipes/chickenparmesan.dart';
import 'package:fap_everydayfitness/recipes/chilipasta.dart';
import 'package:fap_everydayfitness/recipes/fishburger.dart';
import 'package:fap_everydayfitness/recipes/lambribs.dart';
import 'package:fap_everydayfitness/recipes/maccheese.dart';
import 'package:fap_everydayfitness/recipes/sauteedveggies.dart';
import 'package:fap_everydayfitness/recipes/steamedbroccoli.dart';
import 'package:fap_everydayfitness/recipes/steamedfish.dart';
import 'package:fap_everydayfitness/recipes/turkeymeatballs.dart';
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
        routes: {
          '/Bakedsalmon': (_) => Bakedsalmon(),  //check
          '/Beefstew': (_) => Beefstew(),  //check
          '/Chickenparmesan': (_) => Chickenparmesan(),  //check
          '/Chilipasta': (_) => Chilipasta(),  //check
          '/Fishburger': (_) => Fishburger(),  //check
          '/Grilledchicken': (_) => Grilledchicken(),   //check
          '/Lambribs': (_) => Lambribs(),  //check
          '/Maccheese': (_) => Maccheese(), //check
          '/Sauteedveggies': (_) => Sauteedveggies(),  //check
          '/Steamedbroccoli': (_) => Steamedbroccoli(), //check
          '/Steamedfish': (_) => Steamedfish(),  //check
          '/Turkeymeatballs': (_) => Turkeymeatballs(), //check
        },
      ),
    );
  }
}

