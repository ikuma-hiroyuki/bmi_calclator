import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return '太りすぎ';
    } else if (_bmi > 18.5) {
      return '正常';
    } else {
      return 'やせすぎ';
    }
  }

  String getInterpretation(){
    if (_bmi >= 25) {
      return '頑張って痩せましょう';
    } else if (_bmi > 18.5) {
      return '今のままでいいです';
    } else {
      return 'もっと食べましょう';
    }
  }
}
