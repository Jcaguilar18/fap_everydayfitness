import 'package:flutter/material.dart';

class Steamedbroccoli extends StatelessWidget{
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
                  'images/steamedbroccoli.jpg',
                  height: MediaQuery.of(context).size.width * 0.6,
                ),
                Text(
                  "Steamed Broccoli with Lemon and Parmesan",
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
\u20221 1/2 pounds broccoli, cut into 2-inch florets
\u20223 tablespoons extra-virgin olive oil
\u20221 garlic clove, minced
\u2022Pinch of crushed red pepper
\u20221/2 teaspoon grated lemon zest
\u2022Kosher salt
\u2022Shaved Parmigiano-Reggiano, for garnish'''
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right:10.0, bottom: 20.0, top: 20),
                  child: Text(
                      "Set a steamer basket in a large saucepan. Add the broccoli and steam over high heat."
                          "Steam until bright green and just tender, about 4 minutes."
                          "In a large skillet, combine the olive oil with the garlic, crushed red pepper, and lemon zest. Cook over moderate heat until fragrant, about 1 minute."
                          "Add the broccoli, season with salt, and cook for 1 minute, stirring."
                          "Transfer to a bowl, garnish with cheese shavings, and serve.",
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