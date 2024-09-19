import 'package:flutter/material.dart';
import 'package:obd/variables/fonts.dart';
import 'package:obd/variables/media_query.dart';

Widget CustomButtonForStep2(VoidCallback onPressed , String textOfButton ,
    double fontSize , Color colorForButtonText , Color colorForButton ,
double opacity ,
    FontWeight fontWeight , BuildContext context){

  return InkWell(
    onTap: onPressed,
    child: Container
      (
      height: 50,

      width: width(context)*.9,
    decoration:  BoxDecoration(

    border: Border.all(
      color: Colors.cyan,
    ),
    color: colorForButton.withOpacity(opacity),
    ),
    // color: colorForButton.withOpacity(opacity),
      child:Center(child: Text(textOfButton ,  style: Montserrat(fontSize, colorForButtonText, fontWeight),))
    ),
  );
}