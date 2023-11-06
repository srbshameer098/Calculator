import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class buttons extends StatelessWidget {
   const buttons({super.key, this.color, this.textcolor, required this.buttonText, this.buttontapped});

  final color;
  final textcolor;
  final String buttonText;
  final buttontapped;




  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: buttontapped,
      child: ClipRRect(
        borderRadius:BorderRadius.circular(60),
        child: Container(
          color: color,

          child: Center(
            child: Text(
              buttonText,style:
            TextStyle(color: textcolor,fontSize: 28.sp,
            fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }






}


