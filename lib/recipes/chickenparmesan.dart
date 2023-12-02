import 'package:flutter/material.dart';

class Chickenparmesan extends StatelessWidget{
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
                          'images/chickenparmesan.jpg',
                          height: MediaQuery.of(context).size.width * 0.6,
                        ),
                        Text(
                          "Keto Chicken Parmesan",
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
\u20224 boneless skinless chicken breasts
\u2022Kosher salt
\u2022Freshly ground black pepper
\u20221 c. almond flour
\u20223 large eggs, beaten
\u20223 c. freshly grated Parmesan, plus more for serving
\u20222 tsp. garlic powder
\u20221 tsp. onion powder 
\u20222 tsp. dried oregano
\u2022Vegetable oil
\u20223/4 c. low-carb sugar-free tomato sauce
\u20221 1/2 c. shredded mozzarella
\u2022Fresh basil leaves, for topping'''
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right:10.0, bottom: 20.0, top: 20),
                          child: Text(
                            "Preheat oven to 400°. Using a sharp knife, cut chicken breasts in half crosswise. Season chicken on both sides with salt and pepper. "
                                "Place eggs and almond flour in 2 separate shallow bowls. In a third shallow bowl, combine Parmesan, garlic powder, onion powder, and oregano. Season with salt and pepper. "
                                "Working with one at a time, dip chicken cutlets into almond flour, then eggs, and then Parmesan mixture, pressing to coat. "
                                "In a large skillet over medium heat, heat 2 tablespoons oil. Add chicken and cook until golden and cooked through, 2 to 3 minutes per side. Work in batches as necessary, adding more oil when needed. "
                                "Transfer fried cutlets to a 9'-x-13' baking dish, evenly spread tomato sauce on each cutlet and top with mozzarella. "
                                "Bake until cheese is melty, 10 to 12 minutes. If desired, broil until cheese is golden, 3 minutes."
                                "Top with basil and more Parmesan before serving.",
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