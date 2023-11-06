import 'package:calculator/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:math_expressions/math_expressions.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String num1 ="";
  String operand ="";
  String num2 ="";
  String ans ="";

  final List <String> button =
      [
        'C' , '←' , '%' , '÷' ,
        '7' , '8' , '9' , 'X' ,
        '4' , '5' , '6' , '-' ,
        '1' , '2' , '3' , '+' ,
        '00' , '0' , '.' , '=' ,
      ];

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Color(0xff000000),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget> [
            Expanded(
                child: Container(alignment: Alignment.centerRight,
                  child: Text(

                      "$num1$num2$operand" ,
                    style: TextStyle(color: Colors.white,fontSize: 24.sp),
                  ),
                ),
            ),
            Expanded(
              flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    color: Color(0xff000000),
                    child: GridView.builder(
                      itemCount: button.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                      itemBuilder: (BuildContext context,int index){
                        if (index == 19){
                          return buttons(
                            buttontapped: (){
                              setState(() {
                                num1 = '';
                                num2 = '';
                                ans = '0';
                              });
                            },
                            buttonText: button[index],
                            color:  Colors.orange,

                            textcolor:   Colors.white ,
                          );
                        }
                       else if (index == 0){
                          return buttons(
                            buttontapped: (){
                              setState(() {
                                num1 = '';
                                operand ='';
                                num2 = '';
                                ans = '0';
                              });
                            },
                            buttonText: button[index],
                            color:isOperator(button[index])?  Colors.grey.shade800 : Colors.grey.shade900,

                            textcolor: isOperator(button[index])?  Colors.white : Colors.white,

                          );
                        }
                        else if (index == 1){
                          return buttons(
                            buttontapped: (){
                              setState(() {
                                num1 = 
                                num1.substring(0,num1.length-1) ;
                              
                              });
                            },
                            buttonText: button[index],
                            color:isOperator(button[index])?  Colors.grey.shade800 : Colors.grey.shade900,

                            textcolor: isOperator(button[index])?  Colors.white : Colors.white,

                          );
                        }
                          return Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: buttons(
                              buttontapped:() {
                                setState(() {
                                  operand += button[index];
                                });
                              },
                                buttonText: button[index],
                              color:isOperator(button[index])?  Colors.grey.shade800 : Colors.grey.shade900,

                              textcolor: isOperator(button[index])?  Colors.white : Colors.white,
                            ),
                          );
                      }
                    ),


                  ),
                ),
            )

          ],
        ),
      ),
    );
  }


  bool isOperator(String x) {
    if (x == '/' || x == 'x' || x == '-' || x == '+' || x == '=') {
      return true;
    }
    return false;
  }

// function to calculate the input operation
  void equalPressed() {
    String finaluserinput = num1;
    finaluserinput = num1.replaceAll('x', '*');

    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    ans = eval.toString();
}}
