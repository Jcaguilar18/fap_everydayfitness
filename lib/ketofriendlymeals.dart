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

class Ketofriendlymeals extends StatefulWidget {
  @override
  _KetofriendlymealsState createState() => _KetofriendlymealsState();
}

class _KetofriendlymealsState extends State<Ketofriendlymeals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFDEDE),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
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


                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            icon: Image.asset(
                              'images/beefstew.jpg',
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: MediaQuery.of(context).size.width * 0.4,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Beefstew();
                                  },
                                ),
                              );
                            },
                          ),
                          Expanded(
                            child: TextButton(
                              child: Text(
                                "Beef Stew",
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
                                      return Beefstew();
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            icon: Image.asset(
                              'images/chickenparmesan.jpg',
                              width: MediaQuery.of(context).size.width * 0.4,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Chickenparmesan();
                                  },
                                ),
                              );
                            },
                          ),
                          Expanded(
                            child: TextButton(
                              child: Text(
                                "Chicken Parmesan",
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
                                      return Chickenparmesan();
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
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
                                    return Bakedsalmon();
                                  },
                                ),
                              );
                            },
                          ),
                          Expanded(
                            child: TextButton(
                              child: Text(
                                "Baked Salmon",
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
                                      return Bakedsalmon();
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            icon: Image.asset(
                              'images/maccheese.jpg',
                              width: MediaQuery.of(context).size.width * 0.4,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Maccheese();
                                  },
                                ),
                              );
                            },
                          ),
                          Expanded(
                            child: TextButton(
                              child: Text(
                                "Mac & Cheese",
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
                                      return Maccheese();
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.width * 0.1,
                      child:
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Return",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          backgroundColor: Color(0xFFC64343),
                          elevation: 0,
                        ),
                      ),
                    ),
                  ],
                )
            )
        )
    );
  }
}