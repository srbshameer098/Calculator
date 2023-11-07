import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:math_expressions/math_expressions.dart';


class A with ChangeNotifier {
  String num1 ="";
  String operand ="";
  String ans ="0";

  void equalPressed() {
    String finaluserinput = num1;
    finaluserinput = num1.replaceAll('X', '*', ).replaceAll('÷', '/');

    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

      ans = eval.toString();
    notifyListeners();
}
  void changeValue () {
    num1 = '';
    operand = '';
    ans = '0';
    notifyListeners();
  }
  void changeValue1 () {
    num1 =
        num1.substring(0, num1.length - 1);
    notifyListeners();
  }
  void changeValue2 (List<String>button,int index) {
    num1 += button[index];
    notifyListeners();
  }
}
