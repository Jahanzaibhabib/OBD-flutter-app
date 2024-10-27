import 'package:flutter/material.dart';
import 'package:obd/variables/variables.dart';

PreferredSizeWidget CustomAppbar(){

  return  AppBar(
     title :  Text("data"),
      automaticallyImplyLeading : false
  
  );

}



void openDrawer() {
    isDrawerOpen = true;
    print('Drawer Opened');
}

void closeDrawer() {

  isDrawerOpen = false;
  print('Drawer Closed');



}


