import 'dart:math';

import 'package:flutter/material.dart';

class Calculator {
  final int height;
  final int weight;

  double _bmi;

  Calculator({@required this.height, @required this.weight});

  String calculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVER WEIGHT';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDER WEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Your have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5 && _bmi < 25) {
      return 'You have a normal body weight. Good Job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more';
    }
  }
}
