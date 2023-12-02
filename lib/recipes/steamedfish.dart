import 'package:flutter/material.dart';

class Steamedfish extends StatelessWidget{
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
                          'images/steamedfish.jpg',
                          height: MediaQuery.of(context).size.width * 0.6,
                        ),
                        Text(
                          "Steamed Fish with Mushrooms and Noodles",
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
\u20221 1/2 ounces cellophane noodles
\u20221 tablespoon white miso
\u20221 tablespoon oyster sauce
\u20221 tablespoon soy sauce
\u20221 1/2 teaspoons sugar
\u20221/2 cup chicken stock or low-sodium broth
\u20226 ounces large white mushrooms, thinly slice
\u20221 1/2 pounds tilapia or snapper fillets
\u20221 scallion, julienned
\u20223 cilantro sprigs
\u20223 tablespoons canola oil'''
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right:10.0, bottom: 20.0, top: 20),
                          child: Text(
                            "In a small bowl, cover the cellophane noodles with hot water and let stand until softened, about 5 minutes. Drain and cut into 4-inch lengths."
                                "In another small bowl, whisk the miso, oyster sauce, soy sauce, sugar and stock."
                                "Scatter the mushrooms in a deep-dish pie plate and set the fish on top. "
                                "Mound the noodles over the fish and drizzle the sauce on top. Set the pie plate in a steamer basket or a deep skillet large enough to hold it. "
                                "Add 1 inch of water to the steamer or skillet and bring to a boil. Cover and steam until the fish is cooked through, about 15 minutes. "
                                "Transfer the plate to a trivet and scatter with the scallion and cilantro."
                                "Heat the canola oil in a small saucepan until very hot. Drizzle the hot oil over the noodles and fish and serve right away.",
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