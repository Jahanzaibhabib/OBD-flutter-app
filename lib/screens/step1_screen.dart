import 'package:flutter/material.dart';
import 'package:obd/components/customButton.dart';
import 'package:obd/components/inputField.dart';
import 'package:obd/providers/is_drawer_open_provider.dart';
import 'package:obd/screens/appbar.dart';
import 'package:obd/screens/step2_screen.dart';
import 'package:obd/variables/colors.dart';
import 'package:obd/variables/fonts.dart';
import 'package:obd/variables/lists_for_step1.dart';
import 'package:obd/variables/variables.dart';
import 'package:provider/provider.dart';
import 'drawer.dart';



class Step1Screen extends StatelessWidget {
    Step1Screen({super.key});
  final TextEditingController yearController = TextEditingController();
  final TextEditingController makeController = TextEditingController();
  final TextEditingController modelController = TextEditingController();
  final TextEditingController engineController = TextEditingController();
  final TextEditingController fuelTypeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    appBar:CustomAppbar(context),
      drawer: CustomDrawer(context: context),

      body: Container(
        width: MediaQuery.of(context).size.width,
        color: customBlueColor,
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,



          children: [
            Expanded(flex : 1 ,child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("STEP 1" ,
                  style: Montserrat(14, Colors.white, FontWeight.w600),),
                Text("ADD A CAR" , style: Montserrat
                  (30, Colors.white, FontWeight.w800),),
              ],
            )),
            Expanded(flex : 3, child: Column(
              crossAxisAlignment: CrossAxisAlignment.center ,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                CustomTextField(context, yearController , 'Year' , yearList),
                CustomTextField(context, makeController , 'Make (Eg. Honda , '
                    'Toyota )'
                    , makeList),
                CustomTextField(context, modelController , 'Model (Eg. Civic '
                    ', Corolla )'
                    , modelList),
                CustomTextField(context, engineController , 'Engine (0ptional)' ,
                    engineList),
                CustomTextField(context, fuelTypeController , 'Fuel Type '
                    '(optional)' , fuelTypeList),





              ],
            )),



            Expanded(
              child: Center(
                child: CustomButtonForStep2((){navigateToSceren2(context);}, "Next",
                    15, Colors.white, Colors.white, 0, FontWeight.w600, context),
              ),
            )
          ],
        ),
      ),
    );
  }
}

void navigateToSceren2(BuildContext context){
  Navigator.push(context, MaterialPageRoute(builder: (context) => Step2Screen(),));
}