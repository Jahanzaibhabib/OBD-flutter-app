import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:obd/variables/colors.dart';
import 'package:obd/variables/fonts.dart';
import 'package:obd/variables/media_query.dart';

class Step4Screen extends StatelessWidget {
  const Step4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      
      body: Container(
        width: width(context),
        color: customBlueColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("STEP 4" , style: Montserrat(14, Colors.white, FontWeight.w600),),
                FittedBox(

                  fit: BoxFit.scaleDown,
                  child: Padding(
                    padding: EdgeInsets.symmetric( horizontal: 55),

                    child: Text("SELECT YOUR OBD ADAPTER" , style: Poppins
                      (25,
                        Colors
                        .white, FontWeight.w800),),
                  ),
                )
              ],
            ) , flex: 1,) , 
            Expanded(child: Container() , flex: 4,)
          ],
        ),
      ),
    ));
  }
}
