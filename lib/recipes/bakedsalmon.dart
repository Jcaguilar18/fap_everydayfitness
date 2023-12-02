import 'package:flutter/material.dart';

class Bakedsalmon extends StatelessWidget{
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
                          'images/bakedsalmon.jpg',
                          height: MediaQuery.of(context).size.width * 0.6,
                        ),
                        Text(
                          "Feta & Herb-Crusted Salmon",
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
\u2022Cooking spray
\u20221 large salmon fillet (about 2 1/4 lb.)
\u20223/4 tsp. kosher salt
\u20221/4 tsp. freshly ground black pepper
\u20221/4 c. mayonnaise
\u20221 1/2 c. crumbled feta (about 7 oz.)
\u20221/4 c. chopped fresh parsley
\u20222 tbsp. chopped fresh dill
\u20221 tsp. finely grated lemon zest
\u20221 clove garlic, finely chopped
\u2022Lemon wedges, for serving'''
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right:10.0, bottom: 20.0, top: 20),
                          child: Text(
                            "Preheat oven to 400°. Line a large baking sheet with foil and grease with cooking spray. "
                                "Arrange salmon flesh side up on prepared sheet; season flesh side with salt and pepper. "
                                "Spread mayonnaise over flesh side. In a medium bowl, toss feta, parsley, dill, lemon zest, and garlic just to combine, leaving feta in crumbles. "
                                "Sprinkle over mayonnaise. Bake salmon until just cooked through and flesh easily flakes with a fork, about 25 minutes. "
                                "Serve warm with lemon wedges alongside.",
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