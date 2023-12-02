import 'dart:math';

import 'package:fap_everydayfitness/bulkingmeals.dart';
import 'package:fap_everydayfitness/cuttingmeals.dart';
import 'package:fap_everydayfitness/ketofriendlymeals.dart';
import 'package:flutter/material.dart';




class MealRecipe extends StatefulWidget {
  @override
  _MealRecipeState createState() => _MealRecipeState();
}

class _MealRecipeState extends State<MealRecipe> {
  final List<String> screens = ['Bakedsalmon', 'Beefstew','Chickenparmesan','Chilipasta',
    'Fishburger', 'Grilledchicken', 'Lambribs', 'Maccheese', 'Sauteedveggies', 'Steamedbroccoli',
    'Steamedfish', 'Turkeymeatballs'];

  void navigateToRandomScreen() {
    // Get a random index to select a screen from the list
    int randomIndex = Random().nextInt(screens.length-1);
    String selectedScreen = screens[randomIndex];
    // Navigate to the selected screen
    Navigator.pushNamed(context, '/$selectedScreen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFDEDE),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: Image.asset(
                              'images/logo.png',
                              width: MediaQuery.of(context).size.width * 0.15,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          TextButton(
                            child: Text(
                              "Everyday Fitness",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                              ),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: Image.asset(
                              'images/grilledchicken.jpg',
                              width: MediaQuery.of(context).size.width * 0.4,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Cuttingmeals();
                                  },
                                ),
                              );
                            },
                          ),
                          Expanded(
                            child: TextButton(
                              child: Text(
                                "Cutting Meals",
                                style: TextStyle(
                                  fontSize: 30.0,
                                  color: Colors.black,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return Cuttingmeals();
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: Image.asset(
                              'images/onepotchilipasta.jpg',
                              width: MediaQuery.of(context).size.width * 0.4,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Bulkingmeals();
                                  },
                                ),
                              );
                            },
                          ),
                          Expanded(
                            child: TextButton(
                              child: Text(
                                "Bulking Meals",
                                style: TextStyle(
                                  fontSize: 30.0,
                                  color: Colors.black,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return Bulkingmeals();
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: Image.asset(
                              'images/bakedsalmon.jpg',
                              width: MediaQuery.of(context).size.width * 0.4,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Ketofriendlymeals();
                                  },
                                ),
                              );
                            },
                          ),
                          Expanded(
                            child: TextButton(
                              child: Text(
                                "Keto-Friendly Meals",
                                style: TextStyle(
                                  fontSize: 30.0,
                                  color: Colors.black,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return Ketofriendlymeals();
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Image.asset(
                          'images/random.png',
                          width: MediaQuery.of(context).size.width * 0.8,
                        ),
                        onPressed: navigateToRandomScreen,
                      ),
                      TextButton(
                        child: Text(
                          "Random Diet Meal Generator",
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: navigateToRandomScreen,
                      ),
                    ]
                )
            )
        )
    );
  }
}
