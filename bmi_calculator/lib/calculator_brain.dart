import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.width});
  final int height;
  final int width;

  double _bmi = 0;
  String calculateBMI() {
    _bmi = width / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    }
    return 'Underweight';
  }
}
