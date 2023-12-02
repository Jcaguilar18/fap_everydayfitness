import 'package:fap_everydayfitness/intervaltimer.dart';
import 'package:fap_everydayfitness/mealrecipes.dart';
import 'package:flutter/material.dart';
import 'aboutus.dart';
import 'intervaltimer.dart';
import 'input_page.dart';
import 'todolist.dart';
import 'mealrecipes.dart';


class Mainmenu extends StatefulWidget {
  @override
  _MainmenuState createState() => _MainmenuState();
}

class _MainmenuState extends State<Mainmenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFDEDE),
      body: Column(
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
          // Divider(color: Colors.black,thickness: 1.0, ),
          Row(
            children: [
              Image.asset(
                'images/homepic.png',
                height: 400,
                width: 400,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: ElevatedButton(
                  child: Text(
                    'Fitness Tools',
                    style: TextStyle(
                      color: Colors.black, // Set font color to black
                    ),
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: 400,
                          width: 400,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return IntervalTimer();
                                        },
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'Interval Timer',
                                    style: TextStyle(
                                      color: Colors
                                          .black, // Set font color to black
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    backgroundColor: Color(0xFFC64343),
                                    elevation: 0,
                                  )),
                              SizedBox(height: 16),
                              // Add some spacing between buttons
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return MealRecipe();
                                        },
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'Meal Recipes',
                                    style: TextStyle(
                                      color: Colors
                                          .black, // Set font color to black
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    backgroundColor: Color(0xFFC64343),
                                    elevation: 0,
                                  )),
                              SizedBox(height: 16),
                              // Add some spacing between buttons
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return InputPage();
                                        },
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'BMI/Calorie Calculator',
                                    style: TextStyle(
                                      color: Colors
                                          .black, // Set font color to black
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    backgroundColor: Color(0xFFC64343),
                                    elevation: 0,
                                  )),
                              SizedBox(height: 16),
                              // Add some spacing between buttons
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return Todolist();
                                        },
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'To Do List',
                                    style: TextStyle(
                                      color: Colors
                                          .black, // Set font color to black
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    backgroundColor: Color(0xFFC64343),
                                    elevation: 0,
                                  )),
                              SizedBox(height: 16),
                              // Add some spacing between buttons
                              ElevatedButton(
                                  onPressed: () {
                                    // Handle the action for the Close button
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    'Close',
                                    style: TextStyle(
                                      color: Colors
                                          .black, // Set font color to black
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    backgroundColor: Color(0xFFC64343),
                                    elevation: 0,
                                  )),
                            ],
                          ),
                        );
                      },
                    );
                  },
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
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    backgroundColor: Color(0xFFC64343),
                    elevation: 0,
                  ),
                  child: Text(
                    'About Us',
                    style: TextStyle(
                      color: Colors.black, // Set font color to black
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Aboutus();
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
