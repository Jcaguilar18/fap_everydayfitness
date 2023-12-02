import 'package:flutter/material.dart';

class Beefstew extends StatelessWidget{
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
                          'images/beefstew.jpg',
                          height: MediaQuery.of(context).size.width * 0.6,
                        ),
                        Text(
                          "Keto Beef Stew",
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
\u20222 lb. beef chuck roast, cut into 1" pieces
\u2022Kosher salt
\u2022Freshly ground black pepper
\u20222 tbsp. extra-virgin olive oil 
\u20228 oz. Baby bella mushrooms, sliced
\u20221 small onion, chopped
\u20221 medium carrot, peeled and cut into rounds
\u20222 stalks celery, sliced
\u20223 cloves garlic, minced
\u20221 tbsp. tomato paste
\u20226 c. low-sodium beef broth
\u20221 tsp. fresh thyme leaves
\u20221 tsp. freshly chopped rosemary'''
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right:10.0, bottom: 20.0, top: 20),
                          child: Text(
                            "Pat beef dry with paper towels and season well with salt and pepper. In a large pot over medium heat, heat oil. "
                                "Working in batches, add beef and sear on all sides until golden, about 3 minutes per side. "
                                "Remove from pot and repeat with remaining beef, adding more oil as necessary. "
                                "To same pot, add mushrooms and cook until golden and crispy, 5 minutes. Add onion, carrots, and celery and cook until soft, 5 minutes. "
                                "Add garlic and cook until fragrant, 1 minute more. Add tomato paste and and stir to coat vegetables. "
                                "Add broth, thyme, rosemary, and beef to pot and season with salt and pepper. Bring to a boil and reduce heat to a simmer. "
                                "Simmer until beef is tender, 50 minutes to an hour.",
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