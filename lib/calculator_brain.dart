import 'dart:math';
import 'package:flutter/material.dart';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final double height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    // 1ft = 0.3048m
    _bmi = weight / pow(height * 0.3048, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25)
      return 'Overweight';
    else if (_bmi > 18)
      return 'Normal';
    else
      return 'Underweight';
  }

  String getInterpretation() {
    if (_bmi >= 25)
      return 'You have a higher than normal body weight. Try to exercise more.';
    else if (_bmi > 18)
      return 'You have a normal body weight. Good job!';
    else
      return 'You have a lower than normal body weight. You can eat a bit more.';
  }

  Color getColor() {
    if (_bmi > 18 && _bmi < 25)
      return Color(0xff24d876);
    else
      return Color(0xfff54748);
  }
}
