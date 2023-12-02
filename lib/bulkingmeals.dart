import 'package:fap_everydayfitness/recipes/Grilledchicken.dart';
import 'package:fap_everydayfitness/recipes/chilipasta.dart';
import 'package:fap_everydayfitness/recipes/fishburger.dart';
import 'package:fap_everydayfitness/recipes/lambribs.dart';
import 'package:fap_everydayfitness/recipes/sauteedveggies.dart';
import 'package:fap_everydayfitness/recipes/steamedbroccoli.dart';
import 'package:fap_everydayfitness/recipes/steamedfish.dart';
import 'package:fap_everydayfitness/recipes/turkeymeatballs.dart';
import 'package:flutter/material.dart';

class Bulkingmeals extends StatefulWidget {
  @override
  _BulkingmealsState createState() => _BulkingmealsState();
}

class _BulkingmealsState extends State<Bulkingmeals> {
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
                              'images/lambrib.jpg',
                              width: MediaQuery.of(context).size.width * 0.4,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Lambribs();
                                  },
                                ),
                              );
                            },
                          ),
                          Expanded(
                            child: TextButton(
                              child: Text(
                                "Lamb Ribs",
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
                                      return Lambribs();
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
                              'images/turkeymeatballs.jpg',
                              width: MediaQuery.of(context).size.width * 0.4,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Turkeymeatballs();
                                  },
                                ),
                              );
                            },
                          ),
                          Expanded(
                            child: TextButton(
                              child: Text(
                                "Turkey Meatballs",
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
                                      return Turkeymeatballs();
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
                              'images/crispyfishburger.jpg',
                              width: MediaQuery.of(context).size.width * 0.4,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Fishburger();
                                  },
                                ),
                              );
                            },
                          ),
                          Expanded(
                            child: TextButton(
                              child: Text(
                                "Fish Burger",
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
                                      return Fishburger();
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
                              'images/onepotchilipasta.jpg',
                              width: MediaQuery.of(context).size.width * 0.4,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Chilipasta();
                                  },
                                ),
                              );
                            },
                          ),
                          Expanded(
                            child: TextButton(
                              child: Text(
                                "Chili Pasta",
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
                                      return Chilipasta();
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