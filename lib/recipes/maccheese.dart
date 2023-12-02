import 'package:flutter/material.dart';

class Maccheese extends StatelessWidget{
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
                          'images/maccheese.jpg',
                          height: MediaQuery.of(context).size.width * 0.6,
                        ),
                        Text(
                          "Keto Mac & Cheese",
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
For the Mac & Cheese
\u2022Butter, for baking dish
\u20222 medium heads cauliflower, cut into florets
\u20222 tbsp. extra-virgin olive oil
\u2022Kosher salt
\u20221 c. heavy cream 
\u20226 oz. cream cheese, cut into cubes
\u20224 c. shredded cheddar
\u20222 c. shredded mozzarella
\u20221 tbsp. hot sauce (optional)
\u2022Freshly ground black pepper
For the topping:
\u20224 oz. pork rinds, crushed
\u20221/4 c. freshly grated Parmesan
\u20221 tbsp. extra-virgin olive oil
\u20222 tbsp. freshly chopped parsley, for garnish'''
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right:10.0, bottom: 20.0, top: 20),
                          child: Text(
                            "Preheat oven to 375° and butter a 9”-x-13” baking dish. In a large bowl, toss cauliflower with 2 tablespoons oil and season with salt. "
                                "Spread cauliflower onto two large baking sheets and roast until tender and lightly golden, about 40 minutes. "
                                "Meanwhile, in a large pot over medium heat, heat cream. Bring up to a simmer, then decrease heat to low and stir in cheeses until melted. "
                                "Remove from heat, add hot sauce if using and season with salt and pepper, then fold in roasted cauliflower. Taste and season more if needed."
                                "Transfer mixture to prepared baking dish. In a medium bowl stir to combine pork rinds, Parmesan, and oil. Sprinkle mixture in an even layer over cauliflower and cheese."
                                "Bake until golden, 15 minutes. If desired, turn oven to broil to toast topping further, about 2 minutes. Garnish with parsley before serving.",
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