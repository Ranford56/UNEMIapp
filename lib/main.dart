import 'package:flutter/material.dart';
import 'dart:ui';
//theme data
import 'package:unemi/utils/const.dart';
//landing screen
import 'package:unemi/screens/landingScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
      debugShowMaterialGrid: false,
      home: const LandingScreen(),
      title: 'UNEMI',
      theme: ThemeData(
        canvasColor: COLOR_PRIMARY,
        textTheme: screenWidth < 500 ? ACUA_S : ACUA_M,
      ),
    );
  }
}