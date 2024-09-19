import 'package:flutter/material.dart';

import 'package:obd/screens/step1_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Step1Screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
