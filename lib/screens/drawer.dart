import 'package:flutter/material.dart';
import 'package:obd/providers/is_drawer_open_provider.dart';
import 'package:obd/variables/variables.dart';
import 'package:provider/provider.dart';

List drawerItems = [{"title" : "Dashboard" , "onTap" : (){print("drawer is "
    "tapped");}} , {"title" : "Dashboard" , "onTap" : (){print("drawer is "
    "tapped");}} , {"title" : "Dashboard" , "onTap" : (){print("drawer is "
    "tapped");}}, {"title" : "Dashboard" , "onTap" : (){print("drawer is "
"tapped");}}];

Widget CustomDrawer({required BuildContext context}){

  DrawerProvider provider = Provider.of<DrawerProvider>(context);

  return Drawer(
    child: Consumer<DrawerProvider>(
      builder: (context, value, child) {
        return Column(
          children: [
            IconButton(onPressed: (){

              value.toggleDrawer();
              print(value.isDrawerOpen);
              value.isDrawerOpen ?Scaffold.of(context).closeDrawer() :
              Scaffold.of(context).openDrawer();
              }, icon: Icon(value.isDrawerOpen?Icons.close : Icons.menu) ),
            Expanded(
              child: ListView.builder(itemCount: drawerItems.length,itemBuilder: (context, index) {

                return ListTile(

                  title: Text(drawerItems[index]["title"]),
                  onTap: drawerItems[index]["onTap"],

                );

              }, ),
            ),
          ],
        );
      },

    ),
  );

}