import 'package:flutter/material.dart';

class Aboutus extends StatefulWidget {
  @override
  _AboutusState createState() => _AboutusState();
}
class _AboutusState extends State<Aboutus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFFFFDEDE),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
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
              Text(
                "ABOUT US",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right:20.0, bottom: 10.0),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'images/JcAguilar.jpg',
                      width: MediaQuery.of(context).size.width * 0.25,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Juan Carlos Aguilar",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Meet JC Aguilar, our 21-year-old tech and fitness guru. Balancing code and workouts,"
                                " he's shaping a powerful future, one algorithm at a time. 💻💪 #CodeAndLift",
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right:20.0, bottom: 10.0),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'images/jan.png',
                      width: MediaQuery.of(context).size.width * 0.25,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Jan Vincent Elleazar",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Introducing Jan Vincent Elleazar, the 21-year-old design virtuoso. "
                                "His artistic flair transforms pixels into captivating visuals, elevating your app experience. 🎨✨ #DesignSorcerer",
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right:20.0, bottom: 20.0),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'images/jigs.png',
                      width: MediaQuery.of(context).size.width * 0.25,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "John Gabriel Romanes",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Meet Jigs Romanes, the 21-year-old coding prodigy behind the scenes. "
                                "With a passion for emerging tech, he crafts seamless app experiences through intricate algorithms. 💻🚀 #Coder",
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Text(
                "Goal of Our App",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right:20.0, bottom: 20.0),
                child: Expanded(
                    child: Text(
                      "Fueled by a shared passion for tech and fitness, our team embarked on a mission to bridge the gap between innovation and well-being. "
                          "We envisioned a world where cutting-edge algorithms could seamlessly enhance personalized fitness experiences. "
                          "This app is the culmination of our collective commitment to making wellness accessible, enjoyable, and tailored to the fast-paced digital era. "
                          "Welcome to a future where tech propels your fitness journey forward. 🌐💪",
                      textAlign: TextAlign.justify,
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


