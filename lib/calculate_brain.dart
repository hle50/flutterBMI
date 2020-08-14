import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getResultFeedback() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body. Try to exercie more.';
    } else if (_bmi > 18) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body. You can eat a bit more.';
    }
  }
}
