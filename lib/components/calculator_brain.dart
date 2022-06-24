import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;
  double _bmi = 100;

  double calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi;
  }

  String getResult(bmi) {
    if (bmi > 25.0) {
      return "OverWeight";
    } else if (bmi > 18.0) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }
}
