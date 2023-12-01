import 'package:flutter/material.dart';
import 'mainmenu.dart';


class Mealrecipes extends StatefulWidget {
  @override
  _MealrecipesState createState() => _MealrecipesState();
}

class _MealrecipesState extends State<Mealrecipes> {
  @override
  Widget build(BuildContext context) {
return Scaffold(backgroundColor: Color(0xFFFFDEDE),
  body: Column(children: [
    Row(
      children: <Widget>[
        IconButton(
          icon: Image.asset(
            'images/logo.png',
            width: MediaQuery.of(context).size.width * 0.15,
          ),
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
        TextButton(
          child: Text(
            "Everyday Fitness",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black,
            ),
          ),
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
      ],
    ),



  ],
  ),
);



  }
}