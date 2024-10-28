import 'package:flutter/material.dart';
import 'package:obd/providers/is_drawer_open_provider.dart';
import 'package:obd/variables/colors.dart';
import 'package:obd/variables/variables.dart';
import 'package:provider/provider.dart';

import '../variables/functions_for_text_and_color_theme.dart';

List drawerItems = [{"title" : "Dashboard" , "onTap" : (){print("drawer is "
    "tapped");}} , {"title" : "Dashboard" , "onTap" : (){print("drawer is "
    "tapped");}} , {"title" : "Dashboard" , "onTap" : (){print("drawer is "
    "tapped");}}, {"title" : "Dashboard" , "onTap" : (){print("drawer is "
"tapped");}}];

Widget CustomDrawer({required BuildContext context}){


  return Drawer(

    backgroundColor: getColorScheme(context).primary,


        child : Builder(
          builder: (context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      color: Colors.white,
                        alignment: AlignmentDirectional.bottomStart,
                        onPressed: (){


                      Scaffold.of(context).closeDrawer();
                      }, icon: Icon(Icons.close ) ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(itemCount: drawerItems.length,itemBuilder: (context, index) {

                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(





                        title: Text(drawerItems[index]["title"] , style: Theme
                            .of(context).textTheme.bodySmall,),
                        onTap: drawerItems[index]["onTap"],

                      ),
                    );

                  }, ),
                ),
              ],
            );
          }
        )



  );

}

