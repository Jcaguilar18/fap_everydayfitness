import 'package:flutter/material.dart';

class Sauteedveggies extends StatelessWidget{
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
                          'images/sauteedveggies.jpg',
                          height: MediaQuery.of(context).size.width * 0.6,
                        ),
                        Text(
                          "Quinoa with Sauteed Kale",
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
\u20222 cups quinoa, rinsed and drained
\u20224 cups water
\u2022Kosher salt
\u20223 tablespoons olive oil plus 1
\u20221 medium white onion, diced
\u20223 cloves garlic, peeled and diced
\u202210-12 large leaves of kale, stems removed,
  then roughly torn or chopped'''
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right:10.0, bottom: 20.0, top: 20),
                          child: Text(
                            "In a medium pot over high heat, bring the quinoa, water and 1/2 teaspoon kosher salt to a rolling boil, stirring occasionally. "
                                "Reduce the heat to low, and simmer until the quinoa has fully absorbed the water, about 15 minutes. "
                                "Remove from the heat and set aside."
                                "Add the olive oil and onion to a large sauté pan over medium heat, stirring occasionally. When the onions become translucent, about 4 minutes, add the garlic and the kale (in bunches if necessary). "
                                "As the kale begins to wilt and reduce, continue to stir, and add 1/4 cup water if the kale sticks to the pan. Salt and pepper to taste, mix well, then remove from the heat."
                                "In a large serving bowl, toss the cooked quinoa with the kale and onions. If the mixture is dry, add a tablespoon of olive oil. Salt and pepper to taste and serve.",
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