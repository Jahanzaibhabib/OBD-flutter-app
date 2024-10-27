import 'package:flutter/material.dart';
import 'package:obd/components/customButton.dart';
import 'package:obd/functions/naviagtions_functions.dart';
import 'package:obd/variables/colors.dart';
import 'package:obd/variables/fonts.dart';
import 'package:obd/variables/media_query.dart';
import 'drawer.dart';


class Step2Screen extends StatelessWidget {
  const Step2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(context: context),

      body: Container(
        width: MediaQuery.of(context).size.width,
        color: customBlueColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "STEP 2",
                  style: Montserrat(14, Colors.white, FontWeight.w600),
                ),
                FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Text(
                        "GET AN ODB "
                        "ADAPTER",
                        style: Montserrat(25, Colors.white, FontWeight.w800),
                      ),
                    )),
              ],
            )),
            Expanded(child: Image.asset("images/odb_foreground.png")),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButtonForStep2(() {
                    navigateToScreen4(context);
                  }, "Got it", 15, Colors.white, Colors.cyan, 1,
                      FontWeight.w600, context),
                  SizedBox(
                    height: height(context) * .02,
                  ),
                  CustomButtonForStep2(() {
                    navigateToScreen4(context);
                  }, "I'll do this later", 15, Colors.white, Colors.cyan, 0,
                      FontWeight.w600, context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
