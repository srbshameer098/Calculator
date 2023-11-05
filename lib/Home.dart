import 'package:calculator/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                child: Center(
                  child: buttons(
                      buttonText: '1',
                    textcolor: Colors.white,
                  ),
                ),


              ),
          )

        ],
      ),
    );
  }
}
