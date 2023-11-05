import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class buttons extends StatelessWidget {
   const buttons({super.key, this.color, this.textcolor, required this.buttonText});

  final color;
  final textcolor;
  final String buttonText;




  @override
  Widget build(BuildContext context) {
    return  ClipRect(

      borderRadius:BorderRadius.circular(20),
      child: Container(
        color: color,

        child: Center(
          child: Text(buttonText,style: TextStyle(color: textcolor),),
        ),
      ),
    );
  }
}

