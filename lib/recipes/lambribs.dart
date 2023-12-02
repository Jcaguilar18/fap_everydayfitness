import 'package:flutter/material.dart';

class Lambribs extends StatelessWidget{
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
                          'images/lambrib.jpg',
                          height: MediaQuery.of(context).size.width * 0.6,
                        ),
                        Text(
                          "Muscle Lamb Ribs",
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
\u20221 rack of lamb (about 1 1/2 pounds, or 8 ribs), 
  cut into chops and trimmed of fat
\u2022salt and pepper, to taste
\u20221 lb carrots
\u20223 tbsp Dijon mustard
\u20222 tbsp extra-virgin olive oil
\u20222 tbsp finely chopped fresh cilantro
\u20222 tbsp chopped scallions
\u20222 tbsp red wine vinegar
\u20221 tsp loosely packed orange zest'''
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right:10.0, bottom: 20.0, top: 20),
                          child: Text(
                            "Heat a large skillet over medium-high heat. Season lamb with salt and pepper and add to skillet. Sear one side, then cook for 2 minutes on each side."
                                "While the lamb cooks, add carrots to a running food processor, using chopper to push carrots through. Or grate the carrots on the large holes of a box grater."
                                "In a large mixing bowl, whisk together Dijon mustard, olive oil, cilantro, scallions, vinegar, and orange zest. "
                                "Add carrots and, with clean hands, toss with the dressing until carrots are well coated. "
                                "Season with pepper. Let carrots marinate for 10 minutes. Serve with the lamb.",
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