
import 'package:flutter/material.dart';

import '../screens/step2_screen.dart';
import '../screens/step4_screen.dart';
void navigateToScreen2(BuildContext context){
  Navigator.push(context, MaterialPageRoute(builder: (context) => Step2Screen(),));
}

void navigateToScreen4(BuildContext context){
  Navigator.push(context, MaterialPageRoute(builder: (context) => Step4Screen
    (),));
}