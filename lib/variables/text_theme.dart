import 'package:flutter/material.dart';

TextTheme montserratTextTheme(Color color) {
  return TextTheme(

    // Define custom font styles for different types of text

   titleLarge:
       TextStyle(
         fontSize: 24.0,
         fontWeight: FontWeight.bold,
         color: color,
         fontFamily: 'Montserrat-Bold',
       ),
     titleMedium:
       TextStyle(
         fontSize: 18.0,
         fontWeight: FontWeight.bold,
         color: color,
         fontFamily: 'Montserrat-Bold',
       ),
     titleSmall:
       TextStyle(
         fontSize: 14.0,
         fontWeight: FontWeight.bold,
         color: color,
         fontFamily: 'Montserrat-Bold',
       ),
     bodyLarge:
       TextStyle(
         fontSize: 16.0,
         fontWeight: FontWeight.normal,
         color: color,
         fontFamily: 'Montserrat',
       ),
     bodyMedium:
       TextStyle(
         fontSize: 14.0,
         fontWeight: FontWeight.normal,
         color: color,
         fontFamily: 'Montserrat',
       ),
     bodySmall:
       TextStyle(
         fontSize: 12.0,
         fontWeight: FontWeight.normal,
         color: color,
         fontFamily: 'Montserrat',)

  );
}
