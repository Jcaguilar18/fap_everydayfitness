import 'package:flutter/material.dart';

class Mainmenu extends StatefulWidget {
  @override
  _MainmenuState createState() => _MainmenuState();
}

class _MainmenuState extends State<Mainmenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Image.asset(
                'images/logo.png',
                height: 100,
                width: 100,
              ),
              Text('Everyday Fitness'),
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
                  child: const Text('Fitness Tools'),
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
                                  // Handle the action for the first button
                                  // You can add your code here
                                },
                                child: const Text('Interval Timer'),
                              ),
                              SizedBox(height: 16),
                              // Add some spacing between buttons
                              ElevatedButton(
                                onPressed: () {
                                  // Handle the action for the second button
                                  // You can add your code here
                                },
                                child: const Text('Meal Recipes'),
                              ),
                              SizedBox(height: 16),
                              // Add some spacing between buttons
                              ElevatedButton(
                                onPressed: () {
                                  // Handle the action for the third button
                                  // You can add your code here
                                },
                                child: const Text('BMI/Calorie Calculator'),
                              ),
                              SizedBox(height: 16),
                              // Add some spacing between buttons
                              ElevatedButton(
                                onPressed: () {
                                  // Handle the action for the third button
                                  // You can add your code here
                                },
                                child: const Text('To Do List'),
                              ),
                              SizedBox(height: 16),
                              // Add some spacing between buttons
                              ElevatedButton(
                                onPressed: () {
                                  // Handle the action for the Close button
                                  Navigator.pop(context);
                                },
                                child: const Text('Close'),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: ElevatedButton(
                  child: Text('About Us'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Mainmenu();
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
