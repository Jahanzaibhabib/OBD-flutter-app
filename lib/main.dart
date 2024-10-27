import 'package:flutter/material.dart';
import 'package:obd/providers/is_drawer_open_provider.dart';
import 'package:obd/screens/bluetooth_screen.dart';

import 'package:obd/screens/step1_screen.dart';
import 'package:obd/screens/step3_screen.dart';
import 'package:provider/provider.dart';
import 'screens/Signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DrawerProvider(),

      child: MaterialApp(
        home: Step1Screen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
