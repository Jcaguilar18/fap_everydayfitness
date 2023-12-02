import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';
import 'values.dart';


class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation,
      required this.lifes});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  final String lifes;
  Values values = Values();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Results',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),

                  Text(
                  'Your inputted Values: ' +'Gender:'+ values.getGender +' Height:'+ values.getHeight.toString()
                      +' Age:'+ values.getAge.toString() + ' Weight:'+values.getWeight.toString()
                   +' Fitness level:'   + values.getPal.toString(), style: TextStyle(fontSize: 20),textAlign: TextAlign.center
                  ),

                  Text(
                    'Your Calorie Maintance: ',
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    lifes,
                    style: TextStyle(fontSize: 35),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
