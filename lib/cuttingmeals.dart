import 'package:fap_everydayfitness/recipes/Grilledchicken.dart';
import 'package:fap_everydayfitness/recipes/sauteedveggies.dart';
import 'package:fap_everydayfitness/recipes/steamedbroccoli.dart';
import 'package:fap_everydayfitness/recipes/steamedfish.dart';
import 'package:flutter/material.dart';

class Cuttingmeals extends StatefulWidget {
  @override
  _CuttingmealsState createState() => _CuttingmealsState();
}

class _CuttingmealsState extends State<Cuttingmeals> {
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
                      'images/steamedbroccoli.jpg',
                      width: MediaQuery.of(context).size.width * 0.4,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Steamedbroccoli();
                          },
                        ),
                      );
                    },
                  ),
                  Expanded(
                    child: TextButton(
                      child: Text(
                        "Steamed Broccoli",
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
                              return Steamedbroccoli();
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
                      'images/steamedfish.jpg',
                      width: MediaQuery.of(context).size.width * 0.4,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Steamedfish();
                          },
                        ),
                      );
                    },
                  ),
                  Expanded(
                    child: TextButton(
                      child: Text(
                        "Steamed Fish",
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
                              return Steamedfish();
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
                      'images/sauteedveggies.jpg',
                      width: MediaQuery.of(context).size.width * 0.4,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Sauteedveggies();
                          },
                        ),
                      );
                    },
                  ),
                  Expanded(
                    child: TextButton(
                      child: Text(
                        "Sauteed Vegetable",
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
                              return Sauteedveggies();
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
                      'images/grilledchicken.jpg',
                      width: MediaQuery.of(context).size.width * 0.4,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Grilledchicken();
                          },
                        ),
                      );
                    },
                  ),
                  Expanded(
                    child: TextButton(
                      child: Text(
                        "Grilled Chicken",
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
                              return Grilledchicken();
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
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