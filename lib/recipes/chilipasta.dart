import 'package:flutter/material.dart';

class Chilipasta extends StatelessWidget{
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
                          'images/onepotchilipasta.jpg',
                          height: MediaQuery.of(context).size.width * 0.6,
                        ),
                        Text(
                          "One Pot Chili Pasta",
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
\u20221 Tbsp olive oil
\u20221 yellow onion
\u20222 cloves garlic
\u20221/2 lb. ground beef 
\u20222 Tbsp all-purpose flour
\u20222 Tbsp chili powder
\u20221 15oz. can tomato sauce
\u20221 15oz. can diced tomatoes
\u20221 15oz. can black beans
\u20221 15oz. can kidney beans
\u20221 cup frozen corn kernels
\u20222 cups uncooked elbow macaroni
\u20222 cups beef broth
\u20221 cup shredded cheese'''
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right:10.0, bottom: 20.0, top: 20),
                          child: Text(
                            "Dice the onion and mince the garlic. Cook both in a large pot with olive oil over medium heat for 1-2 minutes, or until soft and transparent. "
                                "Add the ground beef and continue to stir and cook until it is fully browned. "
                                "If using a high fat ground beef, drain off the excessive after it is browned."
                                "Add the flour and chili powder to the pot and stir to coat the meat. Continue to stir and cook the coated meat for 1-2 minutes more. "
                                "The flour and chili powder may coat the bottom of the pot, but that’s okay. Just be careful to not let it burn."
                                "Drain and rinse the black and kidney beans. Add the beans, tomato sauce, diced tomato, and corn kernels to the pot. "
                                "Stir well and dissolve the flour/chili powder mixture from the bottom of the pot."
                                "Add the dry macaroni and two cups of beef broth to the pot and stir to combine. "
                                "Place a lid on top, turn the heat up to high, and let the pot come to a boil. "
                                "Once it reaches a boil, give it a quick stir to loosen any pasta stuck to the bottom of the pot, replace the lid, and turn the heat down to medium-low. "
                                "Let the pot simmer on medium-low for about 15 minutes, or until the pasta is soft and has absorbed most of the liquid. "
                                "Stir the pot one or two times during the 15 minutes to loosen any pasta stuck to the bottom."
                                "Once the pasta is fully cooked, turn the heat off and add the cheese. Stir the cheese into the pasta until it has melted in and become slightly creamy. "
                                "Serve hot.",
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