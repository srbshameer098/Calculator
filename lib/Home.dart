import 'package:calculator/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List <String> button =
      [
        'C' , '%' , '←' , '÷' ,
        '7' , '8' , '9' , 'X' ,
        '4' , '5' , '6' , '-' ,
        '1' , '2' , '3' , '+' ,
        '00' , '0' , '.' , '=' ,
      ];

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Color(0xff1f1f35),
      body: Column(
        children: <Widget> [
          Expanded(
              child: Container(),
          ),
          Expanded(
            flex: 2,
              child: Container(
                color: Color(0xff000000),
                child: GridView.builder(
                  itemCount: button.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                  itemBuilder: (BuildContext context,int index){
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: buttons(
                            buttonText: button[index],
                          color:isOperator(button[index])?
                          color: Colors.grey.shade800,
                          textcolor: Colors.white,
                        ),
                      );
                  }
                ),


              ),
          )

        ],
      ),
    );
  }
  bool isOperator(String x){
    if (x=='%'|| x == '/' || x == 'X' || x =='+' || x == '-' || x == '=' ){
      return true;
    }
    return false;
  }
}
