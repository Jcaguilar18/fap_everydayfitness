import 'package:flutter/material.dart';

class Fishburger extends StatelessWidget{
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
                          'images/crispyfishburger.jpg',
                          height: MediaQuery.of(context).size.width * 0.6,
                        ),
                        Text(
                          "Crispy Fish Burger",
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
\u20221 packet Protein Bread
\u2022230 ml water
\u20224 fillets white fish (e.g. cod, hake)
\u202230g Instant Oats
\u20221 egg, beaten
\u202240g dry breadcrumbs
\u20221 tbsp Coconut oil
\u202260g 0% fat Greek yogurt
\u202215g light mayonnaise
\u20221 tbsp chopped capers
\u20221 tbsp chopped gherkins
\u20220.25 shallot, finely diced
\u20221 handful shredded lettuce
\u20221 handful Sliced gherkins'''
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right:10.0, bottom: 20.0, top: 20),
                          child: Text(
                            "Combine the protein bread mix with the water in a medium bowl. Rest for 30 minutes until thickened. "
                                "Preheat the oven to 175C / 350F fan (195C / 380F non-fan). Use moistened hands to divide the mixture into 4 and roll into balls. "
                                "Place onto a lined baking tray and bake for 20-25 minutes until golden."
                                "For the fish, place the oats, egg and breadcrumbs each into their own shallow bowl or dish. Dip the fish first into the oats, tapping off excess. "
                                "Then into the egg, letting excess drip off. Then into the breadcrumbs, turning to coat fully."
                                "Heat the coconut oil in a large non-stick frying pan over a medium-low heat. "
                                "Add the breadcrumbed fish and cook until golden underneath then flip and let cook on the other side until golden. Remove from the pan."
                                "For the tartar sauce, combine all the ingredients in a medium bowl, stirring until fully mixed."
                                "To serve, slice the protein bread rolls in half and fill with the lettuce, sliced gherkins, tartar sauce and crispy fish fillets.",
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