import 'dart:math';
import 'package:fap_everydayfitness/intervaltimer.dart';

import 'calitems.dart';

class CalculatorLife extends CalculatorBrain{
  CalculatorLife({required this.height, required this.age  , required this.weight, required this.gender, required this.pal}) : super(height: height, weight: weight);
final int height;
final int weight;
final String gender;
final double pal;
final int age;
late double maintenance;

calculate() {
  if (gender == 'male') {
    maintenance = 10*weight+6.25*height-5*age+5;
    maintenance = maintenance*pal;

  }
  if (gender == 'female') {
    maintenance = 10*weight+6.25*height-5*age-161;
    maintenance = maintenance*pal;

  }
  return maintenance.toStringAsFixed(1);
}
}


class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});



  items item = new items();//to be deleted

  final int height;
  final int weight;
  late double _bmi;




  String calculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. Try to eat a bit more.';
    }
  }
}
