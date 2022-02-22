import 'dart:math';
class CalculatorBarin{
  CalculatorBarin({this.height,this.weight});
  final int? height;
  final int? weight;

  double? _bmi;

  String calculateBMI(){
    double _bmi = weight! / pow(height!/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if (_bmi!>=25){
      return "Overweight";
    }else if (_bmi!>18.5){
      return "Normal";
    }else {
      return "Underweighht";
    }
  }
  String getInnterpretation(){
    if (_bmi!>=25){
      return "You have a higher than normal body weight. try to excercise more";
    }else if (_bmi!>18.5){
      return "You have a normal body weight. Good job!";
    }else {
      return "You have lower than normal body weight. You can eat a bit more";
    }
  }
}