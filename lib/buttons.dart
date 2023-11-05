import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class buttons extends StatelessWidget {
   const buttons({super.key, this.color, this.textcolor, required this.buttonText});

  final color;
  final textcolor;
  final String buttonText;




  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius:BorderRadius.circular(60),
      child: Container(
        color: color,

        child: InkWell(
          onTap: () =>onBtnTap(buttonText),
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


