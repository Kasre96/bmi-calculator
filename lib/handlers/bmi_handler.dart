import 'dart:math';

import 'package:flutter/material.dart';

class BMIHandler {
  // takes in height abnd weight
  int myHeight;
  int myWeight;

  BMIHandler({@required this.myHeight, @required this.myWeight});

  // private bmi property
  double _bmi;

  // calculate bmi
  String calculateBMI()  {
    _bmi = myWeight/pow((myHeight/100), 2);

    return _bmi.toStringAsFixed(1);
  }

  // return BMI category
  String bmiCategory() {
    if (_bmi < 18.5) {
      return 'Underweight';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'Normal Weight';
    } else if (_bmi >= 25 && _bmi <= 29.9) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

  // return BMI comments
  String bmiComments() {
    if (_bmi < 18.5) {
      return 'You are underweight. Eat more to gain weight.';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'Congratulations. Your body weight is normal';
    } else if (_bmi >= 25 && _bmi <= 29.9) {
      return 'You are overweight. Exercise regularly.';
    } else {
      return 'You are obese. Weat healthy and exercise regularly';
    }
  }
}