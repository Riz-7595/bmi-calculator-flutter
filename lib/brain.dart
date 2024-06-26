import 'dart:math';

class Brain {
  final int height;
  final int weight;
  late double _bmi;

  Brain({required this.height, required this.weight}) {
    _bmi = weight / pow(height / 100, 2);
  }

  String bmiResult() {
    return _bmi.toStringAsFixed(1);
  }

  String bmiText() {
    if (_bmi < 18.5) {
      return "Underweight";
    } else if (_bmi < 25) {
      return "Normal";
    } else {
      return "Overweight";
    }
  }

  String bmiDesc() {
    if (_bmi < 18.5) {
      return "Your body weight lower than normal. Try to eat more!";
    } else if (_bmi < 25) {
      return "You have a normal body weight. Good job keep it up!";
    } else {
      return "Your body weight is higher than normal. Try to exercise more!";
    }
  }
}
