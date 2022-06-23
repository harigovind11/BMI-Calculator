import 'dart:math';

class CalulatorBrain {
  CalulatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;
  double bmi=1;
  String calculateBMI() {
    double bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
    
  }

  String getResult() {
    if (bmi >= 20) {
      return 'Overweight';
    } else if (bmi > 15) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (bmi >= 20) {
      return 'Your higher than normal weight';
    } else if (bmi > 15) {
      return 'You have a normal body weight,Keep going dude';
    } else {
      return 'Your lower than normal weight';
    }
  }
}
