import 'package:flutter/material.dart';

class Turkeymeatballs extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFDEDE),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Expanded(
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

                        Image.asset(
                          'images/turkeymeatballs.jpg',
                          height: MediaQuery.of(context).size.width * 0.6,
                        ),
                        Text(
                          "Honey Sriracha Turkey Meatballs",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Ingredients:",
                              textAlign: TextAlign.left,
                            ),
                            Text('''
\u20222 4oz Trifecta Turkey Patties
\u20221 Egg
\u20221/2 Cup of Panko Bread Crumbs
\u2022Green Onions
\u2022Garlic
\u20221/4 Cup of Pineapple (not for the inside of the meatballs)
\u20221/4 Cup of Sriracha
\u20223 Tbsp Soy Sauce
\u20223 Tbsp Honey
\u2022Minced Garlic
\u20223 Tbsp Rice Vinegar
\u20221/2 Tsp. Toasted Sesame Oil'''
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right:10.0, bottom: 20.0, top: 20),
                          child: Text(
                            "In a large bowl, mix all of the ingredients for the turkey meatballs."
                                "Roll meatballs into 1-inch balls. Place off to the side when rolled."
                                "Heat up a skillet over medium. Grill the turkey meatballs on all sides, until each side is slightly browned. "
                                "(Cover the skillet for 1-2 minutes to cook the inside of the meatballs before removing from heat)."
                                "In a small bowl, mix all of the ingredients for the sauce."
                                "Dip the cooked meatballs into the sauce until thoroughly glazed in sauce."
                                "Pair the meatballs with brown rice. Add in the pineapple. Top with sesame seeds and green onions. Add a lime for additional flavor.",
                            textAlign: TextAlign.justify,
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
                      ]
                  ),
                )
            )
        )
    );
  }

}