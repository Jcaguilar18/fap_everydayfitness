import 'package:flutter/material.dart';

class Grilledchicken extends StatelessWidget{
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
                          'images/grilledchicken.jpg',
                          height: MediaQuery.of(context).size.width * 0.6,
                        ),
                        Text(
                          "Rosemary-Grilled Chicken with Mushroom Sauce",
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
\u20224 skinless, boneless chicken breast halves 
  (1 1/4 pounds)
\u20225 tablespoons extra-virgin olive oil
\u20221 tablespoon chopped rosemary
\u2022Freshly ground pepper
\u20221/2 pound cremini mushrooms, stems discarded 
  and caps thinly sliced
\u20222 garlic cloves, minced
\u20221 teaspoon chopped thyme
\u20223 medium tomatoes—halved, seeded and cut 
  into 1/2-inch dice
\u2022Salt'''
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right:10.0, bottom: 20.0, top: 20),
                          child: Text(
                            "Light a grill or preheat a grill pan. In a medium baking dish, brush the chicken breasts with 1 tablespoon of the oil and rub with the rosemary. "
                                "Season with pepper and let stand for 30 minutes."
                                "Meanwhile, heat the remaining 1/4 cup of oil in a large skillet. "
                                "Add the mushrooms and cook over moderately high heat until browned, about 6 minutes. "
                                "Add the onion, garlic and thyme and cook until the onion is translucent, about 4 minutes. Add the tomatoes and season with salt and pepper. "
                                "Cover partially and cook over low heat, stirring occasionally, until the mushrooms are tender, about 15 minutes."
                                "Season the chicken with salt and grill over moderately high heat, turning once, until cooked through, about 8 minutes."
                                "Season the mushroom sauce with salt and pepper and spoon onto plates. Slice the grilled chicken breasts on the diagonal 1/2 inch thick. "
                                "Arrange the chicken over the mushroom sauce and serve.",
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