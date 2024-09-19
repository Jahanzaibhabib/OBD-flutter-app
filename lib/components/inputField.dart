import 'package:flutter/material.dart';
import 'package:obd/variables/colors.dart';
import 'package:obd/variables/fonts.dart';
import 'package:obd/variables/media_query.dart';


Widget CustomTextField(BuildContext context , TextEditingController
controller ,  String labelText , List<String> itemsList){

  return Column(
    children: [
      Container(
        width: width(context)*.8,
        decoration: BoxDecoration(
        color: backgroundColorOfFields,
          borderRadius: BorderRadius.circular(10),

        ),


        child: Padding(
          padding: EdgeInsets.only(left : 15 , top: 3 , bottom: 8 , right: 15),
          child: DropdownButtonFormField(

              decoration: InputDecoration(

                    labelText: labelText,
                labelStyle: Poppins(15 , Colors.white , FontWeight.normal)



              ),
              style: Montserrat(15, Colors.white, FontWeight.normal),

              items: itemsList.map(
              (String value){
                return DropdownMenuItem(value: value, child: Text(value , style:
                Montserrat(15, Colors.black, FontWeight.normal),) ,



                );
              }
          ).toList(), onChanged: (value){
            controller.text = value.toString();
            print("Value changed hoi ha");
          }),
        )
      ),
      SizedBox(height: height(context)*.03),

    ],
  );


}