import 'package:flutter/material.dart';
import 'package:obd/variables/functions_for_text_and_color_theme.dart';

Widget DiagnosticCard({required String imagePath , required String cardTitle
  , required BuildContext context}){

  return Container(
    width: 10,
    height: 10,
    alignment: Alignment.center,

    decoration: BoxDecoration(
        color: getColorScheme(context).secondary,

        borderRadius: BorderRadius.circular(10)
    ),

    child: Row(
      children: [
        Image.asset(imagePath , width: 40, height: 40,),
        Text(cardTitle , style: getTextTheme(context).bodyMedium!.copyWith(
          color: getColorScheme(context).surface,
        ),)
      ],
    ),

  );

}