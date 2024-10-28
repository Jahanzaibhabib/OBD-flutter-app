import 'package:flutter/material.dart';
import 'package:obd/providers/is_drawer_open_provider.dart';
import 'package:obd/variables/functions_for_text_and_color_theme.dart';
import 'package:obd/variables/variables.dart';
import 'package:provider/provider.dart';

PreferredSizeWidget CustomAppbar(BuildContext context){

  DrawerProvider provider = Provider.of<DrawerProvider>(context);

  return  AppBar(
    backgroundColor: getColorScheme(context).primary,
      leading: Builder(
        builder: (newContext) {
          return IconButton(onPressed: (){

            openDrawer(newContext);
          }, icon: Icon(Icons
              .menu , color: Colors.white,));
        }
      ),

      automaticallyImplyLeading : false

  );

}



void openDrawer(BuildContext context) {
  print("Open Drawer Clicked");
    Scaffold.of(context).openDrawer();
}
//
// void closeDrawer() {
//
//   isDrawerOpen = false;
//   print('Drawer Closed');
//
//
//
// }


