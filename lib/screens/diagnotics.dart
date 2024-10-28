import 'package:flutter/material.dart';
import 'package:obd/components/diagnostics_card.dart';
import 'package:obd/screens/appbar.dart';
import 'package:obd/screens/drawer.dart';
import 'package:obd/variables/functions_for_text_and_color_theme.dart';
import 'package:obd/variables/list_for_diagnostics_cards.dart';

class DiagnosticsScreen extends StatefulWidget {
  const DiagnosticsScreen({super.key});

  @override
  State<DiagnosticsScreen> createState() => _DiagnosticsScreenState();
}

class _DiagnosticsScreenState extends State<DiagnosticsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(context),
        drawer: CustomDrawer(context: context),
        backgroundColor: getColorScheme(context).primary,
      body: GridView.count(crossAxisCount: 2 ,
        childAspectRatio: 1.7, // Set aspect ratio (width/height)


        children: List.generate(pathAndtitle.length, (index){
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: DiagnosticCard(imagePath: pathAndtitle[index][0] , cardTitle:
            pathAndtitle[index][1], context:
            context),
          );
        }),
      ),
    );
  }
}
